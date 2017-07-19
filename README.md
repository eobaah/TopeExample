# Basic steps for creating my postgresql DB


Example:

- create a postgresql database called music from the terminal
```sh
$ createdb music
```
- create a database folder which will contain schema files
```sh
$ mkdir database
```
- create a schema file which we'll load into postgresql
```sh
$ touch database/schema.sql
```
- enter the database folder
```sh
$ cd database
```
- edit the schema file and make sure it contains the schema for both tables as well as the query to join the tables by ``name`` from the artists table and by ``artists`` from the songs table

- go to the command line and send the following schema to the music database using the command below
```sh
$ psql music < schema.sql
```
- you should see the following table that combines the ``name`` and ``genre`` from the artistis table with the ``title`` from the songs table
```
name      |        title        |   genre
----------------+---------------------+-----------
Taylor Swift   | Shake it off        | Pop
Rihanna        | Stay                | Pop
Celine Dion    | My heart will go on | Pop
Celine Dion    | A new day has come  | Pop
Shania Twain   | Party for two       | Country
Gloria Estefan | Conga               | Pop
Led Zeppelin   | Stairway to heaven  | Hard rock
ABBA           | Mamma mia           | Disco
Queen          | Bicycle Race        | Rock
Queen          | Bohemian Rhapsody   | Rock
Guns N Roses   | Dont cry            | Hard rock
(11 rows)
```
