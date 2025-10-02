FROM python:3.13-slim

WORKDIR /app
COPY . /app/

# Dependencies install (without apt-get)
RUN pip install --no-cache-dir --upgrade pip -r Installer

# Env for cookies path
ENV COOKIES_FILE_PATH="/modules/youtube_cookies.txt"

# Run only web app here
CMD ["gunicorn", "app:app"]
