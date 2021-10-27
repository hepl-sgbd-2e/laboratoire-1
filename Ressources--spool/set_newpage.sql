/*Sets the number of blank lines to be printed from the top of each 
page to the top title. A value of zero places a formfeed at the beginning 
of each page (including the first page) and clears the screen on most terminals. 
If you set NEWPAGE to NONE, SQL*Plus does not print a blank line or formfeed 
between the report pages*/

SET NEWPAGE 0;

SELECT * FROM employes;