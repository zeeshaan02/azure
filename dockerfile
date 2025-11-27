FROM python:3.9-slim           # Use lightweight Python image
WORKDIR /app                   # Set working directory inside container
COPY . .                       # Copy all files from host to container
RUN pip install flask           # Install Flask
EXPOSE 5000                     # Expose port 5000 for Azure App Service
CMD ["python", "app.py"]        # Run the Flask app
