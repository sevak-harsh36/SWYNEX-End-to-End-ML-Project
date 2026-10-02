import streamlit as st
import joblib


# Load model and vectorizer
model = joblib.load("fake_news_model.pkl")
vectorizer = joblib.load("tfidf_vectorizer.pkl")


# Page configuration
st.set_page_config(
    page_title="Fake News Detector",
    
    layout="centered"
)


# Title
st.title(" Fake News Detection")
st.write("Enter a news article below and check whether the model predicts it as Fake or Real.")


# Input
news_text = st.text_area(
    "Enter News Article",
    height=200,
    placeholder="Paste news article here..."
)


# Prediction button
if st.button("Predict"):

    if news_text.strip() == "":
        st.warning("Please enter some news text.")

    else:

        # Convert text to TF-IDF
        news_tfidf = vectorizer.transform([news_text])

        # Prediction
        prediction = model.predict(news_tfidf)[0]

        # Display result
        if prediction == 0:
            st.error(" Prediction: FAKE NEWS")
        else:
            st.success(" Prediction: REAL NEWS")

        st.info(
            "Note: This is an ML prediction and should not be treated as "
            "proof that a news article is true or false."
        )