# 🚢 Titanic-Survival-Navigator: Lifeboat Analysis

## 📌 Project Overview
The Titanic Survival Prediction project is a classic data science case study that involves predicting which passengers survived the shipwreck based on demographic and ticketing information. This project focuses on Binary Classification using **Logistic Regression** and covers the complete lifecycle of a data science project—from data cleaning to performance evaluation.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
- **Algorithm:** Logistic Regression

## 📊 Project Workflow & Tasks

### **Part 1: Data Exploration & Pre-processing**
- **Data Loading:** Imported the raw Titanic dataset for analysis.
- **Statistical Summary:** Used `.describe()` and `.columns` to understand data distribution and feature space.
- **Null Value Treatment:** Identified missing values and implemented strategies to handle them (Imputation).
- **Feature Cleaning:** Dropped unnecessary columns like `Unnamed` to streamline the dataset.

### **Part 2: Predictive Modeling (Logistic Regression)**
- **Target & Feature Selection:** Defined `Survived` as the target variable.
- **Data Splitting:** Partitioned the data into **Training (80%)** and **Testing (20%)** sets.
- **Model Training:** Built and trained a **Logistic Regression** model.
- **Probability Estimation:** Calculated survival probabilities for the test dataset.

### **Part 3: Model Evaluation**
- Verified the model's reliability using multiple metrics:
  - **Accuracy Score:** Overall correctness of the model.
  - **Precision & Recall:** Measuring the quality of positive predictions and the ability to find all positive cases.
  - **F1 Score:** Harmonic mean of Precision and Recall.
  - **Confusion Matrix:** Visualized true positives vs. false positives.
  - **ROC Curve & AUC Score:** Evaluated the diagnostic ability of the classifier across all thresholds.

## 📂 Project Structure
- 📄 `Titanic_Survival_Prediction_Logistic_Regression.ipynb` : Full Python code with step-by-step execution.
- 📊 `titanic_data.csv` : Dataset used for training and testing.
- 📝 `README.md` : Project documentation.

## 🚀 Key Insights
- Analyzed the probability of survival across different passenger segments.
- Achieved a robust AUC score, indicating a strong performance in distinguishing between survivors and non-survivors.
