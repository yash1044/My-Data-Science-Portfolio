# 🏨 StayCheck: Hotel Booking Cancellation Prediction

## 📌 Project Overview
StayCheck is a machine learning project aimed at predicting the likelihood of hotel booking cancellations. By analyzing customer demographics, booking lead times, and agent information, the model helps hotels anticipate cancellations and manage their occupancy and revenue more effectively using the **Random Forest** algorithm.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
- **Algorithm:** Random Forest Classifier

## 📊 Project Workflow
### **Part 1: Data Exploration & Pre-processing**
- **Unique Value Analysis:** Examined unique entries across all columns to understand data diversity.
- **Handling Missing Values:**
  - Filled general `NaN` values with a custom placeholder **'Other'**.
  - Specifically imputed missing values in the `agent` column using the **Mean** value.
  - Removed any remaining residual null values to ensure a clean dataset.
- **Visualization:** Created **Bar Plots** to compare the count of `Adults` and `Children` in bookings.
- **Categorical Encoding:** Implemented **Label Encoding** to transform categorical features into a machine-readable format.

### **Part 2: Model Building & Evaluation**
- **Data Splitting:** Partitioned data into training and testing sets for unbiased evaluation.
- **Random Forest Implementation:** Trained an ensemble-based **Random Forest Classifier** to handle complex non-linear relationships.
- **Evaluation Engine:** Developed a comprehensive function to display:
  - Accuracy, Precision, and Recall Scores.
  - Detailed **Classification Report**.
  - **Confusion Matrix** for error analysis.

## 📂 Project Structure
- 📄 `Hotel_Cancellation_Prediction_Random_Forest.ipynb` : End-to-end Python implementation.
- 📊 `hotel_bookings.csv` : Dataset used for modeling.
- 📝 `README.md` : Project documentation.

## 🚀 Key Results
- Leveraged the power of ensemble learning to achieve high prediction accuracy.
- Successfully automated data cleaning processes for varied data types (numeric and categorical).
