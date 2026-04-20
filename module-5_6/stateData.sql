CREATE TABLE madilynstatesdata (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    abbreviation CHAR(2) NOT NULL,
    capital VARCHAR(50) NOT NULL,
    population_millions DECIMAL(5,2),
    region VARCHAR(50)
);

INSERT INTO madilynstatesdata (state_name, abbreviation, capital, population_millions, region) VALUES
('California','CA','Sacramento',39.24,'West'),
('Texas','TX','Austin',30.50,'South'),
('Florida','FL','Tallahassee',22.24,'South'),
('New York','NY','Albany',19.68,'Northeast'),
('Pennsylvania','PA','Harrisburg',12.96,'Northeast'),
('Illinois','IL','Springfield',12.58,'Midwest'),
('Ohio','OH','Columbus',11.78,'Midwest'),
('Georgia','GA','Atlanta',10.91,'South'),
('North Carolina','NC','Raleigh',10.83,'South'),
('Michigan','MI','Lansing',10.03,'Midwest');
