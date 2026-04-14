# 🛡️ CreditShield: Credit Risk Analysis

## 📌 Project Overview
CreditShield is an end-to-end Machine Learning project that classifies loan applicants based on their credit risk. The project involves extensive Data Exploration (EDA), Preprocessing, and Model Optimization using the K-Nearest Neighbors (KNN) algorithm.

## 📊 Workflow & Methodology

### Phase 1: Exploratory Data Analysis (EDA)
- **Data Loading & Inspection:** Loaded the financial dataset and performed a null value check to ensure data integrity.
- **Statistical Summary:** Used `info()` and `describe()` to understand data distributions and types.
- **Visual Insights:** - **Scatterplot:** Analyzed the relationship between **Age** and **Total Work Experience**.
  - **Outlier Detection:** Created **Box plots** for **Age** and **Cibil Score** to identify anomalies in the data.

### Phase 2: Data Preprocessing
- **Feature Engineering:** Separated the dataset into Features (X) and Target (y), where the target variable is **'Total bounces past 12 months'**.
- **Data Scaling:** Normalized numerical features to ensure the KNN algorithm performs optimally.

### Phase 3: Model Building & Hyperparameter Tuning
- **Train-Test Split:** Divided the data into training and testing sets for unbiased evaluation.
- **KNN Classifier:** Initially trained a KNN model and evaluated both **Training and Test scores**.
- **Optimization (K-Value Tuning):** Iterated through **K-values from 1 to 14** to find the 'Sweet Spot'—the K-value that provides the best balance between training and testing accuracy.

## 🛠️ Tech Stack
- **Python** (Pandas, NumPy)
- **Visualization:** Matplotlib, Seaborn
- **Machine Learning:** Scikit-learn (KNN Classifier, Model Selection, Metrics)

## 📂 Project Structure
- 📄 `CreditShield_Credit_Risk_Analysis.ipynb` : Detailed notebook covering EDA and model tuning.
- 📊 `Credit_Data.xlsx` : Dataset with customer financial records.
- 📝 `README.md` : Project documentation.

## 🚀 How to Run
1. Open the `.ipynb` file in Jupyter or Colab.
2. Run all cells to see the Step-by-Step EDA and the K-value optimization graph.

