SELECT a.name 'INSTITUTION NAME', b.name 'COURSE NAME', SUM(if(c.course IS NULL, 0, 1)) 'NUMBER OF STUDENTS'
FROM institution a
left JOIN course b ON a.institutionid = b.institution LEFT JOIN student c ON  b.courseid = c.course
GROUP BY a.name, b.name