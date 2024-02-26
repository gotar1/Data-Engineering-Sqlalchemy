# ETL Project - Lord of The Rings DataBase
--------------------------------

![LOTR](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMHczZTYxcHFlNnoyMnMyamViN20yazMwdmZhcTdtcjIxY29icmp0cCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/J1YE1JI3wXeRvvjzSo/giphy.gif)


## Introduction:

Extract, Transform and Load (ETL) is the general procedure of copying data from one or more sources into a destination system which represents the data differently from the source(s) or in a different context than the source(s). The ETL process became a popular concept in the 1970s and is often used in data warehousing. Click [Here](https://en.wikipedia.org/wiki/Extract,_transform,_load) to learn more about ETL.

For this project we explored the Lord of The Rings (LOTR) movie series and decided to build a postgresSQL DataBase that make it easy to access needed information about the movies, characters, chapters and dialogues. Movies data sets were downloaded from Kaggle and can be found here: [LOTR](https://www.kaggle.com/mokosan/lord-of-the-rings-character-data).

## ETL Work:

### 1- Extract: 

* Data in CSV files format was extracted from Kaggle [LOTR](https://www.kaggle.com/mokosan/lord-of-the-rings-character-data).
 
* Total of three separate CSV files were downloaded. Each file contain different information about the movies. 

### 2- Transform:

**Data Modeling:**

* Python, jupyter notebook and pandas were utilized to do data cleanup and add unique IDs to each data set.

* Built four tables. We used [QuickDBD](http://www.quickdatabasediagrams.com) website to sketch out an Entity Relationship Diagram (ERD) of the tables.

* Primary and Foreign keys were unitlized to build relations between tables.

#### <a id="sql-erd"></a>SQL ERD
![sql erd](SQL_files/ERD.png)

**Data Engineering:**

* Used the result from data modeling to create a table schema for each of the CSV files. 

* Specifing data types, primary keys, foreign keys, and other constraints.

#### <a id="table-schema"></a>Table Schema
![table schema](SQL_files/schema.sql)
![schema](SQL_files/schem.png)   

### 3- Load:

We used pgAdmin 4 and PostgresSQL to build and store our DataBase.

  * Created an engine connection to PostgressSQL.
  * Exported each DataFrame file into the corresponding SQL table.
  * We created tables in the correct order to handle foreign keys.
  * Our DataBase is completed.

**Final DataBase consist of four tables:**

1- Films: Contain informations about movie length, budget, awards and ratings.

2- Characters: Shows the movie characters and their race.

3- Film_Chapters: Break the movies down into chapters similar to what the LOTR books show.

4- Dialogues: Here we put into a separate table the words spoken by characters during the movie.

The way we created and relate our tables realy makes it very easy for a user to query multible factors about the movies at once. 

## Conclusion:
This was a fun project to do and we realy learned a lot about data engineering and how to contruct a relational DataBase. ETL work is widely utilized by many industries today and it is a big bounus to learn how to do it..


