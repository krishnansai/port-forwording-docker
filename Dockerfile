FROM node

RUN apt update

WORKDIR /app

COPY . .

RUN chmod +x script.sh

RUN ./script.sh

CMD ["/bin/bash", "-c", "service apache2 start;lt --port 80"]
