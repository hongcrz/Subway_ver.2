CREATE TABLE green (
	idx number NOT NULL PRIMARY key,
	id varchar2(10) NOT NULL UNIQUE,
	pw varchar2(10) NOT null,
	name varchar2(10) NOT null,
	age number,
	addr varchar2(10),
	reg_date date
);

CREATE SEQUENCE green_seq START WITH 1 INCREMENT BY 1;

SELECT * FROM green;
DROP TABLE green;

INSERT INTO green values(green_seq.nextval, 'asdf', 'asdf', 'asdf', 15 , 'seoul', sysdate);