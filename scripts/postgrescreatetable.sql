\c postgres;
CREATE TABLE student(name VARCHAR(255),rollnumber INT, hostel VARCHAR(255),room INT,mess INT,messpref INT);
COPY student from '/tmp/cleanstudentDetails.txt' with delimiter ',';
