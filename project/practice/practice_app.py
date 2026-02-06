#!pip install streamlit
import streamlit as st
import pickle
import numpy as np


#model = pickle.load(open("model.pkl", "rb"))
import pickle
import os

model = pickle.load(open(model_path, "rb"))

#BASE_DIR = os.path.dirname(__file__)
#encoder_path = os.path.join(BASE_DIR, "encoder.pkl")


if not os.path.exists("disease_model.pkl"):
    st.error("Model file not found!")
    st.stop()

if not os.path.exists("label_encoder.pkl"):
    st.error("Encoder file not found!")
    st.stop()


encoder = pickle.load(open(encoder_path,"rb"))

st.title("Student placement predictor")
st.write("Kindly provide your details")
Student_ID = st.number_input("Student_ID")
Gender = st.radio("Gender", ["Male", "Female"])
Stream = st.radio("Stream", ["CSE", "ESE", "IT","ME","CE"])
CGPA = st.number_input("CGPA", min_value=0.0)
Tenth_percentage = st.number_input("10th_percentage", min_value=0.0)
Twelveth_percentage = st.number_input("12th_percentage", min_value=0.0)
Backlog = st.radio("Backlog", ["No", "Yes"])
Study_hours_per_day = st.number_input("Study_hours_per_day", min_value=0.0)
attendance_percentage = st.number_input("attendance_percentage", min_value=0.0)
projects_completed	= st.number_input("projects_completed", min_value=0.0)
internships_completed = st.number_input("internships_completed", min_value=0.0)
coding_skills_rating = st.number_input("coding_skills_score", min_value=0.0)

x = np.array([[Student_ID,Gender,Stream,CGPA,Tenth_percentage,Twelveth_percentage,
               Backlog,Study_hours_per_day,attendance_percentage,projects_completed,internships_completed,coding_skills_rating]])

if st.button("Predict"):
    preds = model.predict(x)  # if multi-output, shape = (1, 2)
    y1, y2 = preds[0]
    st.subheader("Predictions")
    st.write(f"Placement_status: {y1}")
    st.write(f"Salary_lpa: {y2}")

