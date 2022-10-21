FROM python:latest

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /software
COPY . .

CMD [ "python", "./Simulation/world.py" ]
