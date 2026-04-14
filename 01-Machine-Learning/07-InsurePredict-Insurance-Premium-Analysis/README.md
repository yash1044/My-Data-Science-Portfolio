# 🏥 InsurePredict: Health Insurance Premium Analysis

## 📌 Project Overview
InsurePredict is a machine learning project that predicts the medical insurance costs (charges) for individuals based on their profile. Factors like age, BMI, smoking habits, and number of children are analyzed to build a **Linear Regression** model that estimates insurance premiums accurately.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
- **Algorithm:** Linear Regression

## 📊 Project Workflow
### **Phase 1: Data Exploration & Pre-processing**
- **Null Value Treatment:** - Filled missing values in the `children` column with 0.
  - Imputed missing `BMI` values using the mean of the column.
- **Visual Analysis:** - Created **Scatter Plots** (Age vs Children) and **Bar Plots** (BMI vs Children) to understand data correlations.
- **Feature Transformation:** - Encoded categorical variables (Sex, Smoker, Region) into numerical values.
  - Applied **Feature Scaling** to ensure uniform contribution from all features.

### **Phase 2: Regression Modeling & Evaluation**
- **Implementation:** Built a Linear Regression model to predict the target variable `charges`.
- **Coefficients:** Extracted the **Slope (Weight)** and **Intercept** to understand the impact of each feature.
- **Evaluation Metrics:** Used a comprehensive set of metrics to validate model accuracy:
  - Training & Testing R2 Scores
  - Mean Squared Error (MSE)
  - Mean Absolute Error (MAE)
  - Root Mean Squared Error (RMSE)

## 📂 Project Structure
- 📄 `Insurance_Premium_Prediction_Regression.ipynb` : Detailed Python notebook.
- 📊 `insurance.csv` : Dataset used for analysis.
- 📝 `README.md` : Documentation of the project.

## 🚀 Key Insights
- Demonstrated the strong influence of factors like smoking and BMI on insurance costs.
- Achieved a balanced model with optimized error rates for reliable cost estimation.
