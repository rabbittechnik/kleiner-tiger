import os
from dotenv import load_dotenv
import discord
from discord.ext import tasks
import datetime
import pytz
import openai

# Load environment variables from .env if present
load_dotenv()

# Required environment variables
DISCORD_TOKEN = os.getenv('DISCORD_TOKEN')  # Bot-Token
OPENAI_API_KEY = os.getenv('OPENAI_API_KEY')  # OpenAI-Schlüssel
CHANNEL_ID_STR = os.getenv('CHANNEL_ID')     # Channel für tägliche Grüße

# Validate environment variables
if not DISCORD_TOKEN:
    raise RuntimeError("DISCORD_TOKEN ist nicht gesetzt. Bitte in .env oder in den Umgebungsvariablen hinzufügen.")
if not OPENAI_API_KEY:
    raise RuntimeError("OPENAI_API_KEY ist nicht gesetzt. Bitte in .env oder in den Umgebungsvariablen hinzufügen.")
if not CHANNEL_ID_STR:
    raise RuntimeError("CHANNEL_ID ist nicht gesetzt. Bitte in .env oder in den Umgebungsvariablen hinzufügen.")

try:
    CHANNEL_ID = int(CHANNEL_ID_STR)
except ValueError:
    raise RuntimeError("CHANNEL_ID ist keine gültige ganze Zahl. Bitte überprüfe die Umgebungsvariable.")

TIMEZONE = 'Europe/Berlin'
TRIGGER_NAME = 'kleiner Tiger'               # Name, auf den der Bot reagiert

# Initialize OpenAI
openai.api_key = OPENAI_API_KEY

# Initialize bot (ohne klassischen Prefix)
intents = discord.Intents.default()
intents.messages = True
bot = discord.Client(intents=intents)

@bot.event
async def on_ready():
    print(f"Bot ist online als {bot.user} 🌐 (Reagiert auf '{TRIGGER_NAME}')")
    daily_greeting.start()

@tasks.loop(
    time=datetime.time(hour=8, minute=0, tzinfo=pytz.timezone(TIMEZONE))
)
async def daily_greeting():
    channel = bot.get_channel(CHANNEL_ID)
    if channel:
        await channel.send('🌞 **Guten Morgen!** Wie geht’s euch? 😊')

@bot.event
async def on_message(message):
    # Ignoriere eigene Nachrichten
    if message.author == bot.user:
        return

    content = message.content.strip()
    lower = content.lower()
    trigger_lower = TRIGGER_NAME.lower()

    # Prüfen, ob Trigger-Name irgendwo im Text vorkommt
    if trigger_lower in lower:
        # Frage-Text ab dem Trigger-Namen entfernen
        idx = lower.find(trigger_lower)
        prompt = (content[:idx] + content[idx + len(TRIGGER_NAME):]).strip()
        if not prompt.endswith('?'):
            prompt += '?'  # Sicherstellen, dass es eine Frage ist
        # Anfrage an OpenAI senden
        response = openai.Completion.create(
            model='text-davinci-003',
            prompt=prompt,
            max_tokens=150,
            temperature=0.7
        )
        answer = response.choices[0].text.strip()
        # Sende Antwort mit Emoji
        await message.channel.send(f'💬 {answer} 😃')

if __name__ == '__main__':
    bot.run(DISCORD_TOKEN)
