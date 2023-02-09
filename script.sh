#!/bin/bash
if [ -d "/app/models" ]; then
  echo "Directoy /app/models exists."
else
  echo "Installing and training model files in /app/models..."
  rasa train --augmentation 0
  echo "Model Training successful! (/app/models)"
fi

rasa train --augmentation 0
rasa run --enable-api --debug
