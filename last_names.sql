CREATE TABLE last_names (
	noid			INTEGER,
	name			VARCHAR(20) NOT NULL,
	-- alternative kanji
	alt				VARCHAR(20),
	reading			VARCHAR(100) NOT NULL,
	-- lowercase 2-letter iso3166 code
	country			CHAR(2) NOT NULL,
	CONSTRAINT pk_last_names PRIMARY KEY(noid),
	CONSTRAINT idx_name_unique UNIQUE(name,reading,country)
);

