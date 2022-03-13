FROM python:3.9-slim

RUN apt-get update
RUN apt-get install -y jq zip
RUN pip install awscli boto3

COPY entrypoint.sh /
COPY py-test.py /
RUN chmod +x /entrypoint.sh
RUN ls -lsa
ENTRYPOINT ["/entrypoint.sh"]