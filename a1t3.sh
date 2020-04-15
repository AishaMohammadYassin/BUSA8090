#!/bin/bash

#Note each time you check the answer please remove # from the one you need to check and then run the code

#question 1
#a)
#mysql -u awkologist -p compbiol -e 'select * from expression;' > expression.txt;

#(b
#mysql -u awkologist -p compbiol -e 'select * from annotation;' > annotation.txt;

#(c
#mysql -u awkologist -p compbiol -e 'select annotation.gene, annotation.function, expression.expr_value from annotation, expression where annotation.gene=expression.gene'


#d)
#mysql -u awkologist -p compbiol -e ' select metabolism from annotation group by metabolism having count(metabolism) >1; '

#question2

#a)

#mysql -u awkologist -p compbiol -e ' select LastName, FirstName from Member where Coach is NULL; '

#b)
#mysql -u awkologist -p compbiol -e 'select LastName,FirstName,JoinDate from Member where JoinDate between "2010-01-01 00:00:00" and "2010-12-31 00:00:00";'

#C)

#mysql -u awkologist -p compbiol -e ' select distinct m.LastName, m.FirstName, m.MemberID from Member m  cross join Entry e where Year<>"2014" and m.MemberID = e.MemberID; 
 #d)

#mysql -u awkologist -p compbiol -e 'select m.LastName, m.FirstName, MemberID from Member m where not exists (select * from Competion c where not exists ( select * from Entry e where e.MemberID =m.MemberID and e.Year = c.Year));'


