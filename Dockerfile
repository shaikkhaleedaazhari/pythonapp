FROM python:3.11-slim
COPY requirements.txt .
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]




