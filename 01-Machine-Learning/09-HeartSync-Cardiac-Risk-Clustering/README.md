# ❤️ HeartSync: Cardiac Risk Clustering Analysis

## 📌 Project Overview
HeartSync is an unsupervised machine learning project aimed at grouping individuals into different risk categories based on health metrics. By identifying patterns without predefined labels, the project helps in understanding the various stages of cardiac risk using **K-Means** and **Agglomerative Clustering**.

## 🛠️ Tech Stack
- **Language:** Python
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn, Scipy
- **Algorithms:** K-Means Clustering, Agglomerative (Hierarchical) Clustering

## 📊 Project Workflow
### **Phase 1: Exploratory Data Analysis & Pre-processing**
- **Data Profiling:** Conducted thorough analysis using `.info()` and `.describe()`.
- **Data Cleaning:** Identified null values and dropped the `under_risk` column to prepare the data for unsupervised learning.
- **Scaling:** (Optional but recommended) Prepared features for distance-based algorithms.

### **Phase 2: Clustering Models**
- **K-Means Clustering:** - Partitioned data into distinct clusters.
  - Analyzed cluster centers to understand the characteristics of each group.
- **Hierarchical Clustering:** - Generated a **Dendrogram** using Scipy to visualize the nested groupings.
  - Applied **Agglomerative Clustering** to segment the data.
- **Evaluation:** Calculated the **Silhouette Score** to measure how well-defined and separated the clusters are.

## 📂 Project Structure
- 📄 `Cardiac_Arrest_Risk_Clustering_Analysis.ipynb` : Detailed notebook with clustering implementations.
- 📊 `cardiac_risk_data.csv` : Dataset used for analysis.
- 📝 `README.md` : Project documentation.

## 🚀 Key Results
- Identified distinct patient segments based on health parameters.
- Demonstrated the ability to evaluate unsupervised models using Silhouette analysis.
