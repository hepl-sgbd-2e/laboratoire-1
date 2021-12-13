/*Controls whether to list the text of a SQL statement or 
  PL/SQL command before and after replacing substitution 
  variables with values*/

SET VERIFY ON;
SET HEADING OFF;

DEFINE dummy_char = 'X';

SELECT * FROM dual
WHERE dummy = '&&dummy_char';

SET VERIFY ON;

