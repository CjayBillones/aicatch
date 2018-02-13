from flask import Flask
from flask_restplus import Api, Resource, fields
#from werkzeug.contrib.fixers import ProxyFix

import sqlite3
import datetime
import time

# Run this on rails ROOT folder


app = Flask(__name__)
#app.wsgi_app = ProxyFix(app.wsgi_app)
api = Api(app, version='1.0', title='License Plate Renderer API',
    description='A simple API',
)

ns = api.namespace('renderer', description='renderer operations')

todo = api.model('renderer', {
    'frame_filename': fields.String(required=True, description='The frame'),
    'vehicles_image': fields.String(required=False, description='The vehicle image'),
    'vehicles_plate': fields.String(required=False, description='The vehicle plate'),
    'vehicles_platetext': fields.String(required=False, description='The vehicle plate text'),
    'vehicles_video': fields.String(required=False, description='The video evidence'),
    'vehicles_violation': fields.String(required=False, description='The violation'),
    'vehicles_location': fields.String(required=False, description='The camera location'),
    'vehicles_image': fields.String(required=False, description='The vehicle image'),
    'vehicles_captureddate': fields.String(required=False, description='The captured datetime')
})


class TodoDAO:
    def __init__(self):
        self.counter = 0
        self.conn = sqlite3.connect('db/development.sqlite3', check_same_thread=False)
        self.c = self.conn.cursor()

    
    @ns.doc('list_todos')
    def get(self):
        '''List all tasks'''
        return 'hello world'

    def create(self, data):
        current_datetime = datetime.datetime.now()
        # Assume that return list of glob is already sorted
         
        self.c.execute('''INSERT INTO frames(image_filename, created_at, updated_at) VALUES (?,?,?)''', (data['frame_filename'], current_datetime, current_datetime))
        try:
            self.c.execute('''INSERT INTO live_vehicles(capture_date, 
                                                        license_plate_text, 
                                                        car_image_filename, 
                                                        license_plate_image_filename, 
                                                        video_filename, 
                                                        violation, 
                                                        location, 
                                                        encoded) 
                                                        VALUES(?,?,?,?,?,?,?,?)''',(data['vehicles_captureddate'], 
                                                                                    data['vehicles_platetext'], 
                                                                                    data['vehicles_image'], 
                                                                                    data['vehicles_plate'], 
                                                                                    data['vehicles_image'], 
                                                                                    data['vehicles_violation'], 
                                                                                    data['vehicles_location'], 
                                                                                    0))
        except KeyError:
            print("Warning: nothing inserted with live vehicle frames")
        finally:
            self.conn.commit()
            time.sleep(1)

        self.counter = self.counter + 1
        return '%s'%data['frame_filename']


DAO = TodoDAO()
DAO.create({'frame_filename': '20171215_frame0001.jpg'})
#DAO.create({'task': '?????'})
#DAO.create({'task': 'profit!'})


@ns.route('/')
class TodoList(Resource):
    '''lets you POST to add new tasks'''
    @ns.doc('list_todos')
    def get(self):
        '''List all tasks'''
        return DAO.get()

    @ns.doc('create_todo')
    @ns.expect(todo)
#    @ns.marshal_with(todo, code=201)
    def post(self):
        '''Post a new frame'''
        return DAO.create(api.payload), 201


if __name__ == '__main__':
    app.run(debug=True)