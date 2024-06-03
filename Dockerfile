FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
# build시 실행
RUN pip3 install -r requirements.txt
# container 실행시 실행
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]