FROM ubuntu:latest
RUN apt update && apt -y install fortune
ADD fortuneteller.sh /bin/fortuneteller.sh
ENTRYPOINT [ "/bin/fortuneteller.sh" ]
CMD ["15"]