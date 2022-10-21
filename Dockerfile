FROM ubuntu:22.04

WORKDIR /RAAST

COPY . .

RUN pip install simpylc
RUN pip uninstall pyopengl
RUN pip install PyOpengGL==3.1.5
RUN apt-get install python3-tk

CMD [ "python", "./Simulation/world.py" ]
