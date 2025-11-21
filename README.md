VoltX - Production Render-ready (FINAL)
======================================

This package is configured for PAPER-ONLY trading by default (ENABLE_LIVE=false).
Follow these steps to deploy to Render or run locally.

Local run:
1. unzip, cd into folder
2. cp .env.example .env and edit
3. mkdir data
4. npm ci
5. node server/index.js
6. Open http://localhost:10000

Render deploy:
1. Push this repo to GitHub
2. Create Render Web Service -> Deploy from repo (Docker)
3. Add secrets in Render dashboard (BINANCE_API_KEY, BINANCE_API_SECRET) if needed
4. Ensure ENABLE_LIVE is false until you fully test
