INSERT INTO Address(Street_no, Street, City, State, Zip) VALUES 
  (1023, 'E. Made Up St.', 'Detroit', 'MI', 48126),
  (12305, 'Westlake Dr.', 'Canton', 'MI', 48188),
  (1005, 'Fort St.', 'Allen Park', 'MI', 48101); ---
  
INSERT INTO Credit_Card(Credit_card_num, Credit_card_expMon, Credit_card_expYear) VALUES
  (123456789123123, 01, 2022),
  (999856789123123, 02, 2025),  
  (343456789123123, 05, 2021); ---



INSERT INTO Person(First_name, Last_name, Address_id) VALUES
  ('Tom', 'Tomberino', 1),
  ('Olivia', 'Peterson', 1),
  ('Fred', 'Mullington', 3),
  ('Mary', 'Smith', 2); ---

INSERT INTO Vehicle(VIN_no, License_Plate_No, Make, Model, Year, Color) VALUES 
  (2353, 'sdnf32', 'Chevrolet', 'Camero', 2017, 'Red'),
  (1242, 'sdf3vv', 'Ford', 'Taurus', 2015, 'White'),
  (16123, 'sda332', 'Buick ', 'LeSabre', 2000, 'Green'); ---








INSERT INTO Driver(id, License_no, Vehicle_no) VALUES
  (1, 'LIC_NUM1', 1242),
  (3, 'LIC_NUM2', 2353); ---
  

INSERT INTO Passenger(id, Credit_card_id) VALUES
  (2, 1),
  (3, 2),  
  (4, 3); ---


INSERT INTO Route(driver_id, passenger_id, Start_address, End_address, Driver_rating, Passenger_rating) VALUES
  (1, 2, 1, 3, 4, 5), 
  (1, 3, 2, 3, 5, 7), 
  (3, 2, 3, 1, 5, 6),
  (3, 4, 2, 3, 5 ,6); ---





