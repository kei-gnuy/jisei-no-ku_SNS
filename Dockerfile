# test production
FROM python:3.9-alpine

WORKDIR /app
COPY ./requirements.txt /app/
COPY ./app /app/
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
#CMD ["python", "app.py"]
#EXPOSE 5000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

