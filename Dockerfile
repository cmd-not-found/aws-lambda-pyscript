FROM python:3.9-slim

RUN apt-get update
RUN apt-get install -y jq zip
RUN pip install awscli boto3

ADD entrypoint.sh /entrypoint.sh
ADD py-test.py /py-test.py
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]