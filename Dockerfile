FROM python:3.10.4

WORKDIR /synth_app

COPY . /synth_app
# Install Dependencies and TTS
RUN apt-get update
RUN apt-get -y install espeak-ng
RUN git clone https://github.com/coqui-ai/TTS.git
RUN pip install --trusted-host pypi.python.org TTS
RUN mkdir wavs
RUN chmod +x synth.sh
# Run synthesis script 
ENTRYPOINT ["./synth.sh"]

