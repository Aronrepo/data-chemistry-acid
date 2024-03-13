/**
 * Normalize the database
 *
 * Create new tables and define their relationships based on the schema in `normalization.png`
 */
CREATE TABLE gender
(
    id SERIAL PRIMARY KEY,
    name CHAR(1) NOT NULL

);

CREATE TABLE race
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null

);

CREATE TABLE category
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null

);

CREATE TABLE tolkien_character
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) not null,
	gender_id int,
	race_id int,
	category_id int,
	CONSTRAINT FK_Gender FOREIGN KEY (gender_id)
	REFERENCES Gender(id),
	CONSTRAINT FK_Race FOREIGN KEY (race_id)
	REFERENCES Gender(id),
	CONSTRAINT FK_Category FOREIGN KEY (category_id)
	REFERENCES Gender(id)
	
	
);


/**
 * Populate the new tables
 *
 * Populate the new tables with data from the `middle_earth_character` table.
 * Use transaction(s).
 */


/**
 * Refactor the database
 *
 * Rename the `middle_earth_character` table to `deprecated_middle_earth_character`.
 * Create a view named `middle_earth_character` with the original structure of the data.
 * Run the query in the `app.pgsql` file and check the results.
 */


/**
 * Delete legacy data
 *
 * Delete the `deprecated_middle_earth_character` table.
 */
