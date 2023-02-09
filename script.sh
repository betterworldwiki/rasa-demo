#!/bin/bash
if not [ -d "/app/models" ]; then
  echo "Installing and training model files in /app/models..."
  rasa train --augmentation 0
  echo "Model Training successful! (/app/models)"
fi
rasa run --enable-api --debug
