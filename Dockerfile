FROM python:latest

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get install python3-tk

WORKDIR /software
COPY . .

CMD [ "python", "./Simulation/world.py" ]
