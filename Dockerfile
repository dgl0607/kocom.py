FROM python:3.7.3

ENV LANG C.UTF-8

# Copy data for add-on
COPY run2.sh kocom2.conf kocom2.py /

# Install requirements for add-on
RUN python3 -m pip install pyserial
RUN python3 -m pip install paho-mqtt
RUN python3 -m pip install typing_extensions

WORKDIR /share

RUN chmod a+x /run2.sh

CMD [ "/run2.sh" ]
