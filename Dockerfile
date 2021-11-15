FROM marketsquare/robotframework-browser:latest

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

USER root
COPY Tests /Tests
RUN chown -R pwuser:pwuser /Tests
USER pwuser
