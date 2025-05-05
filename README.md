# ML Apprentice Take Home Assessment

## Overview

This project implements a simple multi-task learning model using a sentence transformer (DistilBERT) as a backbone.

The model performs:
- **Task A**: Topic classification (Finance/Tech, Health/Lifestyle, Entertainment/Sports)
- **Task B**: Sentiment classification (Positive/Negative)

Both tasks are trained simultaneously with hypothetical data.

---

## Repository Structure

| File | Purpose |
|:-----|:--------|
| `ML_Assessment.ipynb` | Main Jupyter Notebook implementing Tasks 1 to 4 |
| `Dockerfile` | Docker instructions to run the notebook in a containerized environment |
| `requirements.txt` | Python package dependencies |
| `README.md` | Project description and running instructions |

---

## How to Run

You can run this project either **directly** or **using Docker**.

---

### 1. Run Locally (Without Docker)

1. Clone this repository:

     ```bash
   git clone https://github.com/your-username/ML_Apprentice_Assessment.git
   cd ML_Apprentice_Assessment

2. Install the required Python libraries:

   ```bash
   pip install -r requirements.txt

Start Jupyter Notebook:
      jupyter notebook

Open ML_Assessment.ipynb and run the cells sequentially.

### 2. Run Using Docker
Docker ensures full environment reproducibility.

Make sure Docker is installed and running.

Build the Docker image:

      
      docker build -t ml-apprentice .

Run the Docker container:

      docker run -p 8888:8888 ml-apprentice
Open the provided Jupyter Notebook URL in your browser (http://127.0.0.1:8888).

Open ML_Assessment.ipynb and execute the notebook inside Docker.

## Key Decisions and Insights
Sentence Embedding: Mean pooling over token embeddings to generate sentence representations.

Multi-Task Heads: Two separate classifier heads (one for Task A, one for Task B) sharing the same encoder.

Loss Calculation: Used cross-entropy losses independently for Task A and Task B, then summed for final optimization.

Hypothetical Data: Created small custom datasets for fast simulation within the assignment time constraint.

Dockerization: Added Docker support to demonstrate reproducibility and professional ML practices.

## Technologies Used
Python

PyTorch

HuggingFace Transformers

Jupyter Notebook

Docker

