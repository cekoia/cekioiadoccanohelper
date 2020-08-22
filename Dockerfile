FROM python:3.7-slim

RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["app.py"]