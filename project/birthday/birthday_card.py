import streamlit as st
import io
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm

def generate_card(name):
    # Create a simple birthday card using matplotlib
    fig, ax = plt.subplots(figsize=(8, 6))
    # Set background color
    ax.set_facecolor('#fff5f5')
    # Remove axes
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.axis('off')
    
    # Add decorative border
    border = plt.Circle((0.5, 0.5), 0.45, color='#ff6f61', linewidth=5, fill=False)
    ax.add_patch(border)
    
    # Add text
    # Use a nice font if available, else default
    try:
        font_path = fm.findfont(fm.FontProperties(family='serif'))
        prop = fm.FontProperties(fname=font_path)
        ax.text(0.5, 0.5, f"Happy Birthday, {name}!", 
                ha='center', va='center', fontsize=48, color='#333', fontproperties=prop)
    except Exception:
        ax.text(0.5, 0.5, f"Happy Birthday, {name}!", 
                ha='center', va='center', fontsize=48, color='#333')
    
    # Save to bytes buffer
    buf = io.BytesIO()
    fig.savefig(buf, format='png', bbox_inches='tight', dpi=100)
    plt.close(fig)
    buf.seek(0)
    return buf

def main():
    st.set_page_config(page_title="Birthday Wishes", layout="centered")
    
    # Modern CSS
    st.markdown("""
        <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: auto;
        }
        .title {
            text-align: center;
            color: #ff6f61;
            margin-bottom: 20px;
        }
        .section {
            margin-top: 20px;
        }
        </style>
    """, unsafe_allow_html=True)
    
    st.markdown('<div class="card"><h1 class="title">Happy Birthday!</h1></div>', unsafe_allow_html=True)
    
    # Name input
    name = st.text_input("Enter the birthday person's name:", "Friend")
    
    # Upload picture
    st.markdown('<div class="section"><h3>Upload a Photo</h3></div>', unsafe_allow_html=True)
    img_file = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png", "gif"])
    if img_file is not None:
        st.image(img_file, caption="Uploaded Photo", use_column_width=True)
    
    # Play music
    st.markdown('<div class="section"><h3>Play a Song</h3></div>', unsafe_allow_html=True)
    audio_file = st.file_uploader("Choose an audio file...", type=["mp3", "wav", "ogg"])
    if audio_file is not None:
        st.audio(audio_file, format='audio')
    
    # Generate and download birthday card
    st.markdown('<div class="section"><h3>Download Birthday Card</h3></div>', unsafe_allow_html=True)
    if st.button("Generate Card"):
        card_buffer = generate_card(name)
        st.download_button(
            label="Download Card",
            data=card_buffer,
            file_name="birthday_card.png",
            mime="image/png"
        )
    
    # Celebration
    st.balloons()

if __name__ == "__main__":
    main()
