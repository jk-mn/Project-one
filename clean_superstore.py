import pandas as pd
import re
import os

# === CONFIGURATION ===
INPUT_PATH = r"C:\Users\WALTON\Downloads\Superstore.xlsx"
OUTPUT_PATH = "Superstore_Cleaned.csv"
SHEET_NAME = "Superstore"

# === LOAD DATA ===
try:
    df = pd.read_excel(INPUT_PATH, sheet_name=SHEET_NAME)
except FileNotFoundError:
    raise Exception(f"File not found at: {INPUT_PATH}")
except Exception as e:
    raise Exception(f"Error loading file: {e}")

# === TEXT CLEANING FUNCTION ===
def clean_text(text):
    """
    Cleans text by removing unwanted characters, normalizing whitespace,
    and stripping quotes, commas, and non-breaking spaces.
    """
    if pd.isna(text):
        return text
    text = str(text)
    text = text.replace("\u00A0", " ")             # Non-breaking spaces
    text = re.sub(r'\s+', ' ', text).strip()       # Collapse multiple spaces, strip edges
    text = re.sub(r'[",\']', '', text)             # Remove quotes and commas
    return text

# === CLEAN SPECIFIC COLUMNS ===
# List of columns you want to clean. Expand if needed.
columns_to_clean = ['Product_Name']

for col in columns_to_clean:
    if col in df.columns:
        df[col] = df[col].apply(clean_text)
    else:
        print(f"Warning: Column '{col}' not found in data.")

# === SAVE CLEANED FILE ===
df.to_csv(OUTPUT_PATH, index=False, encoding='utf-8')
print(f"✅ Cleaned data saved to: {os.path.abspath(OUTPUT_PATH)}")
