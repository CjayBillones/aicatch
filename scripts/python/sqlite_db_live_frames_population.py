import sqlite3
import datetime
import time

conn = sqlite3.connect('db/development.sqlite3')

c = conn.cursor()

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = 0 if (c.execute('SELECT COUNT(*) FROM frames ORDER BY id DESC LIMIT 1').fetchone()[0] == 0) else c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1').fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0001.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0002.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0003.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0004.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0005.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0006.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0007.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0008.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0009.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0010.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0011.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0012.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0013.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0014.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0015.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0016.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0017.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0018.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0019.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0020.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0021.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0022.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0023.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0024.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0025.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0026.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0027.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0028.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0029.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0030.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0031.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0032.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0033.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0034.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0035.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0036.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0037.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0038.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0039.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0040.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0041.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0042.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0043.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0044.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0045.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0046.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0047.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0048.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0049.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0050.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0051.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0052.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0053.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0054.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0055.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0056.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0057.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0058.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0059.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)

current_datetime = datetime.datetime.now()
c.execute('SELECT * FROM frames ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO frames VALUES (?,?,?,?)''', (new_id, '20171215_frame0060.jpg', current_datetime, current_datetime))
conn.commit()
time.sleep(1)