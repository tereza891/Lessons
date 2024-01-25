FROM ubuntu

USER 0

RUN apt update -y && apt install build-essential -y

COPY . /img_dir

WORKDIR /img_dir

RUN g++ file.cpp -o file.gpp

CMD ["./file.gpp"]
