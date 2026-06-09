import pandas as pd
import glob
import zipfile
import os

#1 - EXTRACT ZIP FILES
folder_path = r"C:\Users\sadee\Downloads\Telegram Desktop\Cyclistic_Case_Study"

zip_files = glob.glob(folder_path + "/*.zip")
print(f"Found {len(zip_files)} ZIP files")

for zip_file in zip_files:
    with zipfile.ZipFile(zip_file, 'r') as z:
        z.extractall(folder_path)

#2 - COMBINE ALL CSV FILES
all_files = glob.glob(folder_path + "/**/*divvy-tripdata*.csv", 
                      recursive=True)
print(f"Found {len(all_files)} CSV files")

df_list = []
for file in all_files:
    temp = pd.read_csv(file)
    df_list.append(temp)

df = pd.concat(df_list, ignore_index=True)

#3 - SAVE COMBINED FILE
output_path = folder_path + r"\cyclistic_combined.csv"
df.to_csv(output_path, index=False)

print(f"Total rows: {len(df)}")
print(f"Columns: {df.columns.tolist()}")
print("File saved as cyclistic_combined.csv!")
