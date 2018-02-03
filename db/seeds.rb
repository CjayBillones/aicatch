require 'csv'

locations = ["Cam 1", "Cam 2", "Cam 3"]
locations.each do |x|
  location = Location.create(name: x) if !Location.find_by_name(x)
end

violations = {"Number Coding" => {"first" => "300", "second" => "300", "third" => "300"}, "Illegal Loading" => {"first" => "150", "second" => "150", "third" => "150"}}
violations.each_pair do |key, value|
  Violation.create!(name: key, first_offense_penalty: value["first"], second_offense_penalty: value["second"], third_offense_penalty: value["third"]) if !Violation.find_by_name(key)
end

captured_violator_placeholders_csv = File.read(Rails.root.join('lib','seeds','captured_violator_placeholders.csv'))
csv = CSV.parse(captured_violator_placeholders_csv, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  captured_violator_placholder = CapturedViolatorPlaceholder.create!(capture_date: row['Capture Date'],
                                                                     license_plate_text: row['License Plate Text'],
                                                                     car_image_filename: row['Car Image Filename'],
                                                                     license_plate_image_filename: row['License Plate Image Filename'],
                                                                     video_filename: row['Video Filename'],
                                                                     violation: row['Violation'],
                                                                     location: Location.find_by_name(row['Location']).name
                                                                    )
end

live_vehicle = LiveVehicle.create!(capture_date: '2018-01-01 13:48:22', license_plate_text: 'ACE1242', car_image_filename: '20180101_134822_image3.jpg', license_plate_image_filename: '20180101_134822_plate3.jpg', video_filename: '20180101_1348_video.avi', violation: 'Number Coding', location: 'Cam 1')

admin_one = User.create!(username: 'rkbillones',
                         password: 'password',
                         password_confirmation: 'password',
                         name: 'Robert Kerwin Billones',
                         admin: true,
                         role: 'AICatch Admin'
                        ) if !User.find_by_username('rkbillones')

admin_two = User.create!(username: 'jajose',
                         password: 'password',
                         password_confirmation: 'password',
                         name: 'John Anthony Jose',
                         admin: true,
                         role: 'AICatch Admin'
                        ) if !User.find_by_username('jajose')

mmda_admin = User.create!(username: 'operator_head',
                          password: 'password',
                          password_confirmation: 'password',
                          name: 'MMDA Operator Head',
                          admin: true,
                          role: 'Operator Head'
                         ) if !User.find_by_username('operator_head')

mmda_operator = User.create!(username: 'operator_one',
                             password: 'password',
                             password_confirmation: 'password',
                             name: 'MMDA Operator One',
                             admin: false,
                             role: 'Operator'
                            ) if !User.find_by_username('operator_one')
