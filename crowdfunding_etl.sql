CREATE TABLE Contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

CREATE TABLE Category (
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
);


CREATE TABLE Campaigns (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launch_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
