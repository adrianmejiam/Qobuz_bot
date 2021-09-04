FROM python:latest
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"
RUN apt update && apt upgrade -y && apt install git -y && apt install python3 -y && apt install python3-pip -y && apt install -y ffmpeg opus-tools bpm-tools
RUN git clone https://github.com/adrianmejiam/Download_bot.git
RUN cd Download_bot
WORKDIR /Download_bot
RUN pip install -r requirements.txt
CMD python3 -m  qobuz.py
