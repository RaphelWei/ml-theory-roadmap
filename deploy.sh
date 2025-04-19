#!/bin/bash
set -e

NOW=$(date "+%Y-%m-%d %H:%M:%S")

echo "📂 Ensuring everything is up-to-date..."

# If you use any local content generation, add it here
# e.g., scripts that regenerate sidebar/index files

echo "🚀 Deploying ML Theory Roadmap to Netlify..."
netlify deploy --prod --dir=docs

echo "✅ Netlify deployment complete."

echo "📦 Committing roadmap updates to Git..."
git add .
git commit -m "ML Theory Roadmap update: ${NOW}"
git push

echo "🎉 Roadmap deployed and pushed!"