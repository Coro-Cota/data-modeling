CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	username VARCHAR(255),
	password VARCHAR(255)
);

CREATE TABLE contact_info (
	contact_id SERIAL PRIMARY KEY,
	user_id int REFERENCES users(user_id),
	email VARCHAR(255),
	address VARCHAR(255),
	phone VARCHAR(255)
);

CREATE TABLE ingredients (
	ingredients_id SERIAL PRIMARY KEY,
	ingredients_text VARCHAR(255),
	ingredients_amount FLOAT
);

CREATE TABLE pictures (
	picture_id SERIAL PRIMARY KEY,
	url VARCHAR(255)
);

CREATE TABLE recipe_posts (
	recipe_id SERIAL PRIMARY KEY,
	ingredients_id int REFERENCES ingredients(ingredients_id),
	user_id int REFERENCES users(user_id),
	picture_id int REFERENCES pictures(picture_id),
	instructions VARCHAR(255)
);

CREATE TABLE occasions (
	occasion_id SERIAL PRIMARY KEY,
	user_id int REFERENCES users(user_id),
	recipe_id int REFERENCES recipe_posts(recipe_id)  
);






