FROM python:3.7
COPY ./ /usr/src/app
WORKDIR /usr/src/app
RUN pip install -r requirements.txt
EXPOSE 3001
CMD ["python", "simon.py"]
