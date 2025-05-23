FROM python:3-slim
WORKDIR /programas/ingesta
RUN pip3 install boto3
RUN pip3 install mysql-connector-python
RUN pip3 install pandas
COPY . .
CMD [ "python3", "./ingesta.py" ]
