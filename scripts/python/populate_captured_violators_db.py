import sqlite3

# Establish connection with the sqlite3 database
# Parameters inside the connect is the database name
conn = sqlite3.connect('db/development.sqlite3')

# Create cursor object to perform SQL commands with execute
c = conn.cursor()

# Get new uniqe id
c.execute('SELECT * FROM captured_violator_placeholders ORDER BY id DESC LIMIT 1')
new_id = c.fetchone()[0] + 1


# Insert new data to captured_violator_placeholders table
c.execute('''INSERT INTO captured_violator_placeholders VALUES(?,?,?,?,?,?,?,?,?)''',(new_id,'2018-01-02 16:52:31', 'LGW 988', '20180102_165231_image0.jpg', '20180102_165231_plate0.jpg', 'video20180102_165231.avi', 'Number Coding', 'Cam 3', 0))

conn.commit() # Commit database changes

conn.close() # Close database connection