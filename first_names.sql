CREATE TABLE first_names (
	foid			INTEGER,
	-- The first name in kanji
	name			VARCHAR(20) NOT NULL,
	-- The first name in hiragana
	reading			VARCHAR(100) NOT NULL,
	-- M or F
	sex				CHAR(1),
	-- lowercase 2-letter iso3166 code
	country			CHAR(2) NOT NULL,
	popularity		DECIMAL,
	CONSTRAINT pk_first_names PRIMARY KEY(foid),
	CONSTRAINT idx_fname_unique UNIQUE(name,reading,sex,country)
);
