#FROM python:3.8.9-alpine3.13
#COPY pom.xml /tmp/
#WORKDIR /project
#ADD . /project
#ADD https://wildfire.paloaltonetworks.com/publicapi/test/elf .
#RUN pip install -r requirements.txt
#CMD ["python","assistant.py"]

FROM python:3.8.9-alpine3.13
COPY pom.xml /tmp/
COPY wildfire-test-elf-file-dbs /opt/
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
