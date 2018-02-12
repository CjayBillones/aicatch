import sqlite3
import datetime
import time
import glob
conn = sqlite3.connect('db/development.sqlite3')

c = conn.cursor()

# Run this on rails ROOT folder

# Use Glob For Rails Testing

listFrames = glob.glob('public/MASTER/LIVE/FRAMES/*.jpg')
sortedlist = sorted([i.rsplit('/',1)[1] for i in listFrames])
for frame in sortedlist:
    current_datetime = datetime.datetime.now()
    # Assume that return list of glob is already sorted
    c.execute('''INSERT INTO frames(image_filename, created_at, updated_at) VALUES (?,?,?)''', (frame, current_datetime, current_datetime))
    conn.commit()
    time.sleep(1)

# Use REST API for actual Demo
