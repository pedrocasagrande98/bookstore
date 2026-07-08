FROM python:3.13-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install poetry
RUN pip install --upgrade pip && pip install poetry

# Disable poetry virtualenvs creation so dependencies are installed globally
RUN poetry config virtualenvs.create false

# Copy the dependency files first
COPY pyproject.toml poetry.lock ./

# Install the project dependencies
RUN poetry install --no-root --no-interaction --no-ansi

# Copy the project files
COPY . .

# Expose port
EXPOSE 8000

# Start server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
