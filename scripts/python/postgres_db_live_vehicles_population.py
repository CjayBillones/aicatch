import urlparse
import psycopg2

try:

  urlparse.uses_netloc.append("postgres")
  url = urlparse.urlparse("postgres://xxvrbsmjqlajkj:32a754a8ba70709e3667b79cc466673acd2c05c56c02f1b782623280bbd489e2@ec2-23-23-245-89.compute-1.amazonaws.com:5432/d6392va2a7oc0e")

  conn = psycopg2.connect(
      database=url.path[1:],
      user=url.username,
      password=url.password,
      host=url.hostname,
      port=url.port
  )

  print "Connection established!"
  c = conn.cursor()

  c.execute("""INSERT INTO live_vehicles (capture_date, license_plate_text, car_image_filename, license_plate_image_filename, video_filename, violation, location, encoded) VALUES ('2017-12-15 14:50:29', 'LGW988', '20171215_145029_image1.jpg', '20171215_145029_plate1.jpg', '20171215_1450_video.avi', 'Number Coding', 'Cam 1', False)""")

  #live_vehicles = ({"capture_date":'2017-12-15 14:50:29', "license_plate_text":'LGW988', "car_image_filename":'20171215_145029_image1.jpg', "license_plate_image_filename":'20171215_145029_plate1.jpg', "video_filename":'20171215_1450_video.avi', "violation":'Number Coding', "location":'Cam 1', "encoded":False}, {"capture_date":'2017-12-15 14:50:29', "license_plate_text":'YY4747', "car_image_filename":'20171215_145029_image2.jpg', "license_plate_image_filename":'20171215_145029_plate2.jpg', "video_filename":'20171215_1450_video.avi', "violation":'Number Coding', "location":'Cam 1', "encoded":False})
  #c.executemany("""INSERT INTO live_vehicles(capture_date, license_plate_text, car_image_filename, license_plate_image_filename, video_filename, violation, location, encoded) VALUES (%(capture_date)s, %(license_plate_text)s, %(car_image_filename)s, %(license_plate_image_filename)s, %(video_filename)s, %(violation)s, %(location)s, %(encoded)s)""", live_vehicles)
except:
  print "Unable to connect to database"