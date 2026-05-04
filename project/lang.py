from transformers import pipeline
from langdetect import detect

# Load summarizer
summarizer = pipeline("summarization", model="facebook/bart-large-cnn")

# Cache translation models
translation_pipelines = {}

def get_translation_pipeline(src_lang):
    model_name = f"Helsinki-NLP/opus-mt-{src_lang}-en"
    
    if model_name not in translation_pipelines:
        translation_pipelines[model_name] = pipeline("translation", model=model_name)
    
    return translation_pipelines[model_name]

def translate_to_english(text):
    try:
        lang = detect(text)
    except:
        lang = "en"
    
    if lang == "en":
        return text
    
    try:
        translator = get_translation_pipeline(lang)
        translated = translator(text, max_length=512)
        return translated[0]['translation_text']
    except:
        # fallback if language model not available
        return text

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

# ---- TEST LOOP ----
if __name__ == "__main__":
    while True:
        text = input("\nEnter text (or 'exit'): ")
        
        if text.lower() == "exit":
            break
        
        result = multilingual_summarizer(text)
        
        print("\n--- Translated ---")
        print(result["translated_text"])
        
        print("\n--- Summary ---")
        print(result["summary"])
