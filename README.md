# 🏥 Medical Appointment No-Show Analysis

## 📌 Problem
Healthcare providers often face high no-show rates, leading to inefficient resource allocation and financial losses.

---

## 📊 Dataset
- Source: Kaggle - Medical Appointment Dataset
- Records: 110,000+ appointments
- Variables: Age, Gender, SMS_received, Diabetes, Wait Time, No-show

---

## 🧠 Approach
- Data cleaning and preprocessing using SQL (BigQuery)
- Creation of key variables:
  - `has_missed`
  - `wait_days`
- Exploratory data analysis
- Dashboard creation using Looker Studio

---

## 🔥 Key Insights

### 💰 Financial Impact
- Estimated loss: **$1.11M**
- No-show rate: **20.18%**

### ⏳ Wait Time Effect
- Same-day appointments → ~5% no-show
- >7 days → 30%+ no-show
- >15 days → highest risk

### 📱 SMS Impact
- SMS reminders do not significantly reduce no-show
- Likely used for high-risk patients

---

## 💡 Recommendations

- Reduce wait times to under 7 days
- Improve reminder systems (multi-channel)
- Implement risk-based scheduling

---

## 📊 Dashboard
[Link to Looker Studio Dashboard]

---

## 🛠 Tools Used
- SQL (BigQuery)
- Looker Studio
- Data Analysis
