# ✈️ FlyHigh: Airline Passenger Satisfaction Analysis

## 📌 Project Overview
FlyHigh is a comprehensive Data Science project aimed at understanding and predicting airline passenger satisfaction. By analyzing various factors like flight distance, service quality (Food, Check-in), and passenger demographics, the project builds a robust Classification model to distinguish between satisfied and dissatisfied customers.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
- **Algorithm:** Decision Tree Classifier

## 📊 Key Features & Workflow
### **Phase 1: Exploratory Data Analysis (EDA)**
- **Data Sanitization:** Formatted column names (replacing spaces with `_`), handled missing values, and removed redundant features like `Unnamed` and `id`.
- **Statistical Profiling:** Conducted mean satisfaction analysis across Gender, Age, and Food/Drink preferences.
- **Visual Insights:** - Plotted satisfaction distributions.
  - Used **Boxplots** for outlier detection in Flight Distance and Check-in services.
  - Analyzed trends between passenger age and satisfaction levels.

### **Phase 2: Machine Learning Modeling**
- **Preprocessing:** Implemented Manual Labeling for target variables and used **Label Encoding** for categorical features (Gender, Customer Type, Travel Type, Class).
- **Feature Scaling:** Applied **StandardScaler** to normalize feature data.
- **Model Implementation:** Trained a **Decision Tree Classifier** using Entropy as a criterion to optimize decision nodes.
- **Evaluation Engine:** Built a custom function to track:
  - Accuracy, Precision, Recall, and F1-Score.
  - Classification Report for detailed performance metrics.
  - Heatmap-based **Confusion Matrix**.

## 📂 Project Structure
- 📄 `Elevating Passenger Experience Quick Commerce Analytics for Airlines.ipynb` : Detailed notebook covering EDA and Model Building.
- 📊 `passenger _data.csv` : The raw dataset used for analysis.
- 📝 `README.md` : Project documentation and summary.

## 🚀 Key Results
- Identified critical service areas that drive passenger loyalty.
- Achieved a high-performing classification model capable of predicting satisfaction with significant precision.
