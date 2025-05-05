# Use a lightweight Python base image
FROM python:3.10-slim

# Install required Python packages
RUN pip install torch transformers notebook

# Set working directory inside container
WORKDIR /app

# Copy the notebook file into the container
COPY ML_Assessment.ipynb .

# Default command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
