SET ECHO OFF
SET HEADING OFF
SET FEEDBACK OFF;

select 'DROP TABLE '||table_name || ' CASCADE CONSTRAINTS;' from user_Tables;