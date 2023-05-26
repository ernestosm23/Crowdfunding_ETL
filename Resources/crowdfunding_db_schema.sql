DROP TABLE IF EXISTS campaign CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contact CASCADE;

CREATE TABLE category (
	category_id VARCHAR(255) NOT NULL,
	PRIMARY KEY (category_id),
	category VARCHAR(255) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(255) NOT NULL,
	PRIMARY KEY (subcategory_id),
	subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE contact (
	contact_id INT NOT NULL,
	PRIMARY KEY (contact_id),
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	PRIMARY KEY (cf_id),
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(255) NOT NULL ,
	currency VARCHAR(255) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
