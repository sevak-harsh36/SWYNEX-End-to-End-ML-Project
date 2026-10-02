# 📰 Fake News Detection

## 📌 About the Project

This project uses **Machine Learning** to detect whether a news article is **Fake** or **Real**.

The project uses **TF-IDF** for text processing and **Logistic Regression** for prediction.

A simple **Streamlit web application** is also included.

## 🛠️ Technologies Used

* Python
* Pandas
* Scikit-learn
* TF-IDF
* Logistic Regression
* Streamlit
* Jupyter Notebook

## 📂 Dataset

The project uses:

* `Fake.csv` – Fake news
* `True.csv` – Real news

## 🔄 Workflow

```text
Dataset
   ↓
Data Cleaning
   ↓
TF-IDF
   ↓
Logistic Regression
   ↓
Model Evaluation
   ↓
Streamlit App
   ↓
Fake / Real Prediction
```

## 📁 Project Structure

```text
Fake-News-Detection/
│
├── fake_news_detection.ipynb
├── Fake.csv
├── True.csv
├── fake_news_model.pkl
├── tfidf_vectorizer.pkl
├── app.py
├── requirements.txt
└── README.md
```

### Run Streamlit

```bash
streamlit run app.py
```

Then open the URL shown in the terminal.

## 🎯 Output

The application predicts:

```text
✅ REAL NEWS
```

or

```text
❌ FAKE NEWS
```



