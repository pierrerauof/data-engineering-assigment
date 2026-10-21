
FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir pandas jupyter

EXPOSE 8888

CMD ["python", "-m", "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
