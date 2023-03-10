# tts-fpitch
An exercise to fine tune a fast-pitch model using the coqui tts framework on a specific speaker of the artic dataset

## Instructions

1. Clone this repo in your working folder

git clone https://github.com/wetdog/tts-fpitch

2. Download the model from S3 bucket in the same folder

curl https://t3st-jos3.s3.us-east-2.amazonaws.com/best_model.pth -o best_model.pth

3. Build the container 

`docker build -t tts-fpitch .`

4. Run the model with your desired text, this would create an output folder in your current directory with the speech wav file. 

`docker run -it --rm -v $(pwd)/output:/synth_app/wavs tts-fpitch "the original is unfaithful to the translation"`
