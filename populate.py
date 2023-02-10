import time
import pandas as pd
import mysql.connector

# Connect to the database
username = 'new_username'
password = 'new_password'
host = 'localhost'
database = 'InstacartMarketBasket'
conn = mysql.connector.connect(user=username, password=password, host=host, database=database)
cursor = conn.cursor()

files = ['aisles.csv', 'departments.csv', 'products.csv', 'orders.csv', 'order_products__train.csv', 'order_products__prior.csv']

start_time = time.time()

for file_name in files:
  df = pd.read_csv(file_name)

  # Replace nan values in the data with 0
  df.fillna(0, inplace=True)

  table_name = file_name.split('/')[-1].split('.')[0]

  data = [tuple(x) for x in df.to_numpy()]

  columns = ', '.join(df.columns)
  placeholders = ', '.join(['%s'] * len(df.columns))
  sql = f"INSERT INTO {table_name} ({columns}) VALUES ({placeholders})"

  # Split the data into smaller chunks and insert them one by one
  chunk_size = 1000000
  for i in range(0, len(data), chunk_size):
    print(f'Inserting {len(data[i:i+chunk_size])} rows into {table_name}')
    
    cursor.executemany(sql, data[i:i+chunk_size])
    conn.commit()
    print(f'Time taken: {time.time() - start_time} seconds')


conn.close()
