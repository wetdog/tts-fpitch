# tts-fpitch
An exercise to fine tune a fast-pitch model using the coqui tts framework on a specific speaker of the artic dataset

## Docker file

Build the container 

docker build -t tts-fpitch .

docker run -it --rm -v $(pwd)/output:/synth_app/wavs tts-fpitch "the original is unfaithful to the translation"
