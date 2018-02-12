import sqlite3
import time
from datetime import date
conn = sqlite3.connect('db/development.sqlite3')
c = conn.cursor()
today = date.today()
#c.execute("INSERT INTO captured_violator_placeholders VALUES ('2018-01-08 06:46:54', 'YY4747', '20180108_064654_image0.png', '20180108_064654_plate0.png', 'video20180108_064654.avi', 'Number Coding', 'Cam 1')")

c.execute("INSERT INTO captured_violator_placeholders VALUES ('2018-01-08 06:46:54', 'YY4747', '20180108_064654_image0.png', '20180108_064654_plate0.png', 'video20180108_064654.avi', 'Number Coding', 'Cam 1',"0","0","0","0")")

conn.commit()

conn.close()