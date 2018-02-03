import sqlite3
# import datetime
import time

# Establish connection with the sqlite3 database
# Parameters inside the connect is the database name
conn = sqlite3.connect('db/development.sqlite3')

# Create cursor object to perform SQL commands with execute
c = conn.cursor()

# Get current date and time
# current_datetime = datetime.datetime.now()

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-15 14:50:29', 'LGW988', '20171215_145029_image1.jpg', '20171215_145029_plate1.jpg', '20171215_1450_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-15 14:50:29', 'YY4747', '20171215_145029_image2.jpg', '20171215_145029_plate2.jpg', '20171215_1450_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-15 14:55:29', 'YY4747', '20171215_145529_image0.jpg', '20171215_145529_plate0.jpg', '20171215_1455_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-15 14:55:29', 'YY4747', '20171215_145529_image1.jpg', '20171215_145529_plate1.jpg', '20171215_1455_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 14:55:29', 'YY4747', '20171216_145529_image0.jpg', '20171216_145529_plate0.jpg', '20171216_1455_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 14:55:29', 'YY4747', '20171216_145529_image1.jpg', '20171216_145529_plate1.jpg', '20171216_1455_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:29', 'YY4747', '20171216_165529_image0.jpg', '20171216_165529_plate0.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:29', 'ACE-1242', '20171216_165529_image1.jpg', '20171216_165529_plate1.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:29', 'ADE-1242', '20171216_165529_image2.jpg', '20171216_165529_plate2.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:29', 'AD3-12A2', '20171216_165529_image3.jpg', '20171216_165529_plate3.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(2)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:40', 'ACE-1242', '20171216_165540_image0.jpg', '20171216_165540_plate0.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:40', 'LGW988', '20171216_165540_image1.jpg', '20171216_165540_plate1.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2017-12-16 16:55:40', 'ACE-1242', '20171216_165540_image2.jpg', '20171216_165540_plate2.jpg', '20171216_1655_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 09:30:40', 'ACE-1242', '20180101_093040_image0.jpg', '20180101_093040_plate0.jpg', '20180101_0930_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 09:30:40', 'LGW988', '20180101_093040_image1.jpg', '20180101_093040_plate1.jpg', '20180101_0930_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 09:30:40', 'ACE1242', '20180101_093040_image2.jpg', '20180101_093040_plate2.jpg', '20180101_0930_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 09:30:40', 'ACE 1242', '20180101_093040_image3.jpg', '20180101_093040_plate3.jpg', '20180101_0930_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 09:30:40', 'LGW988', '20180101_093040_image4.jpg', '20180101_093040_plate4.jpg', '20180101_0930_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 12:31:40', 'ACE1242', '20180101_123140_image0.jpg', '20180101_123140_plate0.jpg', '20180101_1231_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 12:31:40', 'LGW 988', '20180101_123140_image1.jpg', '20180101_123140_plate1.jpg', '20180101_1231_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(1)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 12:31:59', 'ACE 1242', '20180101_123159_image0.jpg', '20180101_123159_plate0.jpg', '20180101_1231_video.avi', 'Number Coding', 'Cam 1', 0))

conn.commit()
time.sleep(3)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'LGW 988', '20180101_134201_image0.jpg', '20180101_134201_plate0.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'ACE1242', '20180101_134201_image1.jpg', '20180101_134201_plate1.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'LGW988', '20180101_134201_image2.jpg', '20180101_134201_plate2.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 1', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'LGW988', '20180101_134201_image3.jpg', '20180101_134201_plate3.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 1', 0))


c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'ACE 1242', '20180101_134201_image4.jpg', '20180101_134201_plate4.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 2', 0))

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id, '2018-01-01 13:42:01', 'LGW 988', '20180101_134201_image5.jpg', '20180101_134201_plate5.jpg', '20180101_1342_video.avi', 'Number Coding', 'Cam 2', 0))

conn.commit()
time.sleep(5)

c.execute('SELECT * FROM live_vehicles ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1
c.execute('''INSERT INTO live_vehicles VALUES(?,?,?,?,?,?,?,?,?)''',(new_id,'2018-01-02 16:52:31', 'LGW 988', '20180102_165231_image0.jpg', '20180102_165231_plate0.jpg', 'video20180102_165231.avi', 'Number Coding', 'Cam 1', 0))


conn.commit()

# Close database connection
conn.close()