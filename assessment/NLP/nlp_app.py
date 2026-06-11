import streamlit as st
import joblib
import spacy
from pathlib import Path
import pandas as pd

# =====================================================
# PAGE CONFIG
# =====================================================

st.set_page_config(
    page_title="NewsBot AI",
    page_icon="📰",
    layout="wide",
    initial_sidebar_state="expanded"
)

# =====================================================
# CUSTOM CSS
# =====================================================

st.markdown("""
<style>

.stApp{
    background: linear-gradient(
        135deg,
        #0f172a,
        #111827,
        #1e293b
    );
}

.main-title{
    text-align:center;
    font-size:4rem;
    font-weight:700;
    color:white;
}

.subtitle{
    text-align:center;
    color:#cbd5e1;
    font-size:1.2rem;
    margin-bottom:30px;
}

.glass{
    background: rgba(255,255,255,0.08);
    backdrop-filter: blur(15px);
    -webkit-backdrop-filter: blur(15px);
    border-radius:20px;
    border:1px solid rgba(255,255,255,0.15);
    padding:25px;
}

.result-card{
    padding:30px;
    border-radius:20px;
    text-align:center;
    margin-top:20px;
}

.history-card{
    background: rgba(255,255,255,0.05);
    border-radius:15px;
    padding:10px;
    margin-bottom:10px;
}

.metric-container{
    text-align:center;
    padding:10px;
}

</style>
""", unsafe_allow_html=True)

# =====================================================
# LOAD FILES
# =====================================================

BASE_DIR = Path(__file__).resolve().parent

MODEL_PATH = BASE_DIR / "news_model.pkl"
VECTORIZER_PATH = BASE_DIR / "vectorizer.pkl"

model = joblib.load(MODEL_PATH)
vectorizer = joblib.load(VECTORIZER_PATH)

# =====================================================
# LOAD SPACY
# =====================================================

@st.cache_resource
def load_spacy():
    return spacy.load(
        "en_core_web_sm",
        disable=["parser","ner"]
    )

nlp = load_spacy()

# =====================================================
# PREPROCESSING
# =====================================================

def preprocess(text):

    doc = nlp(text.lower())

    tokens = []

    for token in doc:

        if token.is_stop:
            continue

        if token.is_punct:
            continue

        if token.is_space:
            continue

        tokens.append(token.lemma_)

    return " ".join(tokens)

# =====================================================
# PREDICTION
# =====================================================

def predict_news(text):

    clean_text = preprocess(text)

    vector = vectorizer.transform([clean_text])

    prediction = model.predict(vector)[0]

    confidence = max(
        model.predict_proba(vector)[0]
    ) * 100

    return prediction, confidence

# =====================================================
# SESSION STATE
# =====================================================

if "history" not in st.session_state:
    st.session_state.history = []

# =====================================================
# SIDEBAR
# =====================================================

with st.sidebar:

    st.title("📰 NewsBot AI")

    st.markdown("---")

    st.success("Model Loaded")

    st.markdown("""
### Categories

💻 TECH

💰 BUSINESS

🏛️ POLITICS

🎬 ENTERTAINMENT
""")

    st.markdown("---")

    st.markdown("""
### Model Details

• Logistic Regression

• CountVectorizer

• Unigrams + Bigrams

• 5000 Features

• spaCy Lemmatization
""")

# =====================================================
# HEADER
# =====================================================

st.markdown(
    '<div class="main-title">📰 NewsBot AI</div>',
    unsafe_allow_html=True
)

st.markdown(
    '<div class="subtitle">Real-Time News Headline Classification System</div>',
    unsafe_allow_html=True
)

# =====================================================
# INPUT SECTION
# =====================================================

st.markdown('<div class="glass">', unsafe_allow_html=True)

headline = st.text_area(
    "Enter News Headline",
    placeholder="Example: Apple unveils next-generation AI chip for smartphones...",
    height=130
)

predict_btn = st.button(
    "🚀 Predict Category",
    use_container_width=True
)

st.markdown('</div>', unsafe_allow_html=True)

# =====================================================
# PREDICTION
# =====================================================

if predict_btn and headline:

    category, confidence = predict_news(headline)

    emoji_map = {
        "TECH":"💻",
        "BUSINESS":"💰",
        "POLITICS":"🏛️",
        "ENTERTAINMENT":"🎬"
    }

    color_map = {
        "TECH":"#3b82f6",
        "BUSINESS":"#10b981",
        "POLITICS":"#ef4444",
        "ENTERTAINMENT":"#8b5cf6"
    }

    emoji = emoji_map.get(category,"📰")
    color = color_map.get(category,"#64748b")

    st.markdown(
        f"""
        <div class="result-card"
        style="
        background:{color}20;
        border:2px solid {color};
        ">
        <h1>{emoji}</h1>
        <h2 style="color:white;">
        {category}
        </h2>
        </div>
        """,
        unsafe_allow_html=True
    )

    col1,col2,col3 = st.columns(3)

    with col1:
        st.metric(
            "Prediction",
            category
        )

    with col2:
        st.metric(
            "Confidence",
            f"{confidence:.2f}%"
        )

    with col3:
        st.metric(
            "Status",
            "Success"
        )

    st.progress(confidence/100)

    st.session_state.history.insert(
        0,
        {
            "headline":headline,
            "category":category,
            "confidence":round(confidence,2)
        }
    )

# =====================================================
# HISTORY
# =====================================================

if st.session_state.history:

    st.markdown("## 📜 Prediction History")

    for item in st.session_state.history[:10]:

        st.markdown(
            f"""
            <div class="history-card">
            <b>Headline:</b><br>
            {item['headline']}<br><br>

            <b>Category:</b>
            {item['category']}<br>

            <b>Confidence:</b>
            {item['confidence']}%
            </div>
            """,
            unsafe_allow_html=True
        )

# =====================================================
# SAMPLE HEADLINES
# =====================================================

st.markdown("## 💡 Example Headlines")

sample_df = pd.DataFrame(
    {
        "Category":[
            "TECH",
            "BUSINESS",
            "POLITICS",
            "ENTERTAINMENT"
        ],
        "Example":[
            "Google launches new AI assistant",
            "Stock market reaches record high",
            "Government passes education bill",
            "Netflix announces new movie series"
        ]
    }
)

st.dataframe(
    sample_df,
    use_container_width=True
)

# =====================================================
# FOOTER
# =====================================================

st.markdown("---")

st.markdown(
"""
<center>

Built using

spaCy • CountVectorizer • Logistic Regression • Streamlit

</center>
""",
unsafe_allow_html=True
)

