DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

CREATE TABLE category (
   category_id VARCHAR(30) NOT NULL,
   category VARCHAR(30) NOT NULL,
   PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
   subcategory_id VARCHAR(30) NOT NULL,
   subcategory VARCHAR(30) NOT NULL,
   PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
   contact_id INT NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name VARCHAR(30) NOT NULL,
   email VARCHAR(60) NOT NULL,
   PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(60) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;