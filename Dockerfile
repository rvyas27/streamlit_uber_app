# Base image
FROM python:3.13.2

# Set working directory
WORKDIR /C:\Users\Rahul.Vyas\OneDrive - Heuristics Informatics Pvt. Ltd\Documents\docker_practice

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into container
COPY . .

# Expose Streamlit default port
EXPOSE 8501

# Run Streamlit
CMD ["streamlit", "run", "uber_pickups.py", "--server.port=8501"]


