

use testdb;
-- desc testdb;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_item VARCHAR(255)
);
    
-- desc category;
INSERT INTO category (category_item) VALUES('president'),('vice president');

SELECT 
    *
FROM
    category;

CREATE TABLE candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(50),
    address VARCHAR(255),
    social_number BIGINT,
    c_id VARCHAR(255),
    category VARCHAR(255)
);

INSERT INTO candidate(name,address,social_number,c_id,category) VALUES('Aastha Shrestha','Palpa,Tansen','9820000000', 'DSFSDF4545DFSDFS4545', 'president');

CREATE TABLE voter (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name CHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    social_number BIGINT NOT NULL,
    v_id VARCHAR(255)  NOT NULL,
    flag BOOLEAN NOT NULL DEFAULT false
);
INSERT INTO voter(name,address,social_number,v_id) VALUES('Amrit Dhakal','Butwal','980343400000', 'DSFSDF4545DFSDFS4545');

SELECT 
    *
FROM
    voter;
    
-- UPDATE table_name     
-- SET column_name1 = new-value1,   
--         column_name2=new-value2, ...    
-- [WHERE Clause]  
UPDATE voter
SET flag = true
WHERE id = 1;
    
DROP TABLE voter;

show tables;
