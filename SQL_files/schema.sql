-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6CTQPc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "films" (
    "ID"  SERIAL  NOT NULL,
    "Name" Varchar(300)   NOT NULL,
    "RuntimeInMinutes" Integer   NOT NULL,
    "BudgetInMillions" Money   NOT NULL,
    "BoxOfficeRevenueInMillions" Money   NOT NULL,
    "AcademyAwardNominations" Integer   NOT NULL,
    "AcademyAwardWins" Integer   NOT NULL,
    "RottenTomatoesScore" Integer   NOT NULL,
    CONSTRAINT "pk_films" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "film_chapters" (
    "ID"  SERIAL  NOT NULL,
    "Film_ID" int   NOT NULL,
    "Chapter_Name" Varchar(300)   NOT NULL,
    CONSTRAINT "pk_film_chapters" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "characters" (
    "ID"  SERIAL  NOT NULL,
    "Film_ID" int   NOT NULL,
    "Character" Varchar(300)   NOT NULL,
    "Race" Varchar(300)   NOT NULL,
    CONSTRAINT "pk_characters" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "dialogues" (
    "ID"  SERIAL  NOT NULL,
    "Character_ID" int   NOT NULL,
    "Film_Chapter_ID" int   NOT NULL,
    "Words" Integer   NOT NULL,
    CONSTRAINT "pk_dialogues" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "film_chapters" ADD CONSTRAINT "fk_film_chapters_Film_ID" FOREIGN KEY("Film_ID")
REFERENCES "films" ("ID");

ALTER TABLE "characters" ADD CONSTRAINT "fk_characters_Film_ID" FOREIGN KEY("Film_ID")
REFERENCES "films" ("ID");

ALTER TABLE "dialogues" ADD CONSTRAINT "fk_dialogues_Character_ID" FOREIGN KEY("Character_ID")
REFERENCES "characters" ("ID");

ALTER TABLE "dialogues" ADD CONSTRAINT "fk_dialogues_Film_Chapter_ID" FOREIGN KEY("Film_Chapter_ID")
REFERENCES "film_chapters" ("ID");

