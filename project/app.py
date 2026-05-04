import streamlit as st

st.title("🌍 Multilingual Summarizer")

user_input = st.text_area("Enter your text")

if st.button("Summarize"):
    result = multilingual_summarizer(user_input)
    
    st.subheader("Translated Text")
    st.write(result["translated_text"])
    
    st.subheader("Summary")
    st.write(result["summary"])
