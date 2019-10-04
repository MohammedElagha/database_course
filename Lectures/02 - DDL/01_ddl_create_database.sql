/* create new database */
CREATE DATABASE aqsa;

/* ----------------------------------- */

/* create new database, after check there is no existing database with the same name */
/* if there is existing database with the same name, no change; no new database; no update or clear on old database */
CREATE DATABASE IF NOT EXISTS aqsa;

/* ----------------------------------- */

/* create new database with determined charset */
CREATE DATABASE aqsa CHARACTER SET utf8;

/* ----------------------------------- */

/* create new database with determined charset, if there is no other database with the same name */
CREATE DATABASE IF NOT EXISTS aqsa CHARACTER SET utf8;
