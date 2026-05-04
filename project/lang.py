from transformers import pipeline
from langdetect import detect

# Load summarizer
summarizer = pipeline("summarization", model="facebook/bart-large-cnn")

# Translation pipelines cache
translation_pipelines = {}

def get_translation_pipeline(src_lang):
    model_name = f"Helsinki-NLP/opus-mt-{src_lang}-en"
    
    if model_name not in translation_pipelines:
        translation_pipelines[model_name] = pipeline("translation", model=model_name)
    
    return translation_pipelines[model_name]

def translate_to_english(text):
    lang = detect(text)
    
    if lang == "en":
        return text
    
    translator = get_translation_pipeline(lang)
    
    translated = translator(text, max_length=512)
    return translated[0]['translation_text']

def summarize_text(text):
    summary = summarizer(text, max_length=130, min_length=40, do_sample=False)
    return summary[0]['summary_text']

def multilingual_summarizer(text):
    english_text = translate_to_english(text)
    summary = summarize_text(english_text)
    
    return {
        "translated_text": english_text,
        "summary": summary
    }

# Example
text = "यह एक उदाहरण है जिसमें हम टेक्स्ट का सारांश निकाल रहे हैं।"
result = multilingual_summarizer(text)

print("Translated:", result["translated_text"])
print("Summary:", result["summary"])
