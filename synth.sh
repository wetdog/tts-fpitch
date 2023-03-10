#!/bin/bash

input_text="$@"
MODEL_FINETUNED="best_model.pth"
MODEL_FINE_CONFIG="config.json"

tts --text "$input_text" \
      --model_path $MODEL_FINETUNED \
      --config_path $MODEL_FINE_CONFIG \
      --out_path /synth_app/wavs/output.wav