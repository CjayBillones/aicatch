import requests
import shutil
import os
import sqlite3
import datetime
import time
import glob
# Establish connection with the sqlite3 database
# Parameters inside the connect is the database name
conn = sqlite3.connect('db/development.sqlite3')

# Create cursor object to perform SQL commands with execute
c = conn.cursor()

print ("Your current working dir")
dir_root = os.path.join(os.environ['HOME'],'front-end-rails','public','MASTER')


# HARDCODE VIDEO to FRAME

# MANUALLY COPY FIRST ALL IMAGES AND PLATE
def extract_images(fileslist):
    return glob.glob(os.path.join(dir_root,fileslist))

# FROM THE LIVE IMAGE AND PLATE DIRECTORY DO THE SCRIPT

# Frames
listFrames = extract_images('LIVE/FRAMES/*.png')
sortedlist = sorted([i.rsplit('/',1)[1] for i in listFrames])

format = "%Y-%m-%d %H:%M:%S"
current_datetime = datetime.datetime.now().strftime(format)

# Testing Parameters
# Assumption: one video only
# We can parse video name to generalize into multiple videos. However, I think it's waste of time.
## Use Glob for testing
listImages = extract_images('LIVE/IMAGES/*.png')
sortedImageListS = sorted([i.rsplit('/',1)[1] for i in listImages])

listPlates = extract_images('LIVE/PLATES/*.png')
sortedPlateListS = sorted([i.rsplit('/',1)[1] for i in listPlates])
video_name = '20180213_1446'
violation = 'Number_Coding'
camera_name = 'Cam 1'
encoded = 0 #False

fps = 30
URL= "http://localhost:5000"
link = "/renderer/"
sublink = '/plates'
for frame in sortedlist:
    newframe = frame.replace('video', '').rsplit('_', 1)[0]
    payload = {"frame_filename": frame}
    print(newframe)
    for image, plates in zip(sortedImageListS, sortedPlateListS):
        if newframe in image:
            payload["vehicles_image"] = image
            payload["vehicles_captureddate"] = current_datetime
            payload["vehicles_platetext"] = ""
            payload["vehicles_plate"] = plates
            payload["vehicles_video"] = video_name
            payload["vehicles_violation"] = "Number Coding"
            payload["vehicles_location"] = "Cam 1"
        
        print(payload)
        r = requests.post(URL+link+sublink, json=payload)

    r = requests.post(URL+link, json=payload)

    print(r.text)