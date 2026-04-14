# 🏦 LendLogic: Loan Approval Predictor using Naïve Bayes

## 📌 Project Overview
LendLogic is a machine learning project designed to automate and streamline the loan approval process. By analyzing applicant data such as income, credit history, and education, the model predicts whether a loan should be approved or rejected. This project utilizes the **Gaussian Naïve Bayes** algorithm for efficient classification.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
- **Algorithm:** Gaussian Naïve Bayes

## 📊 Key Features & Workflow
### **Phase 1: Data Exploration & Pre-processing**
- **Data Cleaning:** Identified and handled missing values to maintain data integrity.
- **Categorical Encoding:** Converted non-numeric features (like Gender, Married status, Education) into numeric format using Encoding techniques.
- **Feature Scaling:** Applied scaling to ensure all features contribute equally to the model's performance.
- **Statistical Analysis:** Used `.describe()` and `.info()` to gain insights into the data distribution.

### **Phase 2: Machine Learning Modeling**
- **Data Splitting:** Divided the dataset into **Training (80%)** and **Testing (20%)** sets.
- **Model Training:** Built and trained the **GaussianNB** classifier.
- **Evaluation:** Tested the model using:
  - Accuracy Scores (Training vs. Testing)
  - Precision, Recall, and F1-Score
  - Confusion Matrix to visualize prediction results.

## 📂 Project Structure
- 📄 `Loan_Approval_Prediction_Naive_Bayes.ipynb` : Detailed Python notebook with full code.
- 📊 `Loan_Dataset.csv` : Dataset used for training.
- 📝 `README.md` : Documentation of the project.

## 🚀 Key Results
- Developed a reliable system to predict loan eligibility based on applicant profiles.
- Demonstrated the power of Naïve Bayes in handling classification tasks with categorical data.
