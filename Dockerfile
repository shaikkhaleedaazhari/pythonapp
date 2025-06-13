FROM public.ecr.aws/docker/library/python:3.9-slim
COPY requirements.txt .
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]




