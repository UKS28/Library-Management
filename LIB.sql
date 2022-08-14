
create database LIBRARRY ;
use LIBRARRY;

CREATE table readers
(
      reader_id varchar(6),
      first_name varchar(15),
      last_name varchar(15),
      city varchar(15),
      mobile_number varchar(10),
      occupation VARCHAR(15),
      date_of_birth date,
      CONSTRAINT readers_pk PRIMARY key (reader_id)
);

CREATE table book
(
      book_id varchar(6),
      book_name varchar(50),
      book_domain varchar(30),
      CONSTRAINT book_pk PRIMARY KEY (book_id)
);
CREATE table active_readers
(
      account_id varchar(6),
      reader_id varchar(6),
      book_id varchar(6),
      account_type varchar(10),
      account_status VARCHAR(10),
      CONSTRAINT active_reader_pk PRIMARY key  (account_id),
      CONSTRAINT active_reader_fk1 FOREIGN key(reader_id) REFERENCES readers(reader_id),
      CONSTRAINT active_reader_fk2 FOREIGN key(book_id) REFERENCES book(book_id)
);

CREATE table book_issue_details
(
      issue_number varchar(6),
      account_id varchar(6),
      book_id varchar(6),
      book_name varchar(50),
      number_of_issued_books int,
      issue_date date,
      CONSTRAINT book_issur_pk PRIMARY key(issue_number),
      CONSTRAINT book_issue_fk1 FOREIGN key (account_id) REFERENCES active_readers(account_id),
      CONSTRAINT book_issur_fk2 FOREIGN key (book_id) REFERENCES book(book_id)
);
CREATE Table author
(
      author_id varchar(6),
      author_name varchar(50),
      book_id varchar(6),
      CONSTRAINT author_pk PRIMARY KEY (author_id),
      CONSTRAINT autor_fk FOREIGN key (book_id) REFERENCES book(book_id)
);

INSERT INTO readers (reader_id, first_name, last_name, city, mobile_number, occupation, date_of_birth)
VALUES ('a001', 'hartik', 'salaria', 'hoshiarpur', '1202384248', 'student', '2001-07-21'),
('a002', 'ashutosh', 'tripathi', 'chitarkoot', '1232384248', 'student', '2003-03-01'),
('a003', 'jaspreet', 'singh', 'batala', '1207234248', 'student', '2001-04-10'),
('a004', 'ujjwal', 'kumar', 'patna', '3212384248', 'student', '2002-11-30'),
('a005', 'maninder', 'singh', 'seattle', '1202010969', 'professional', '1999-06-25'),
('a006', 'sudhir', 'sharma', 'alwar', '1871384248', 'student', '2002-11-23'),
('a007', 'pankaj', 'kumar', 'ahmedabad', '3422284248', 'student', '2001-03-11'),
('a008', 'bhuvnesh', 'tiwari', 'alwar', '1232384248', 'student', '2003-10-01'),
('a009', 'naman', 'singla', 'ludhiana', '1322384248', 'student', '2002-05-24'),
('a010', 'abhinav', 'singh', 'jaipur', '4322384248', 'student', '2001-03-02'),
('a011', 'aman', 'kumar', 'chennai', '1203845668', 'professional', '1998-07-07'),
('a012', 'jeevanjot', 'singh', 'hyderabad', '9822384248', 'professional', '1997-05-10'),
('a013', 'ram', 'kumar', 'goa', '1334384248', 'professional', '1997-03-06'),
('a014', 'charan', 'bhilal', 'delhi', '222384248', 'student', '2001-07-04'),
('a015', 'raju', 'rastogi', 'dwarika', '1333384248', 'professional', '1995-11-06'),
('a016', 'arun', 'jaiswal', 'bhopal', '1205554248', 'student', '2003-10-19'),
('a017', 'yash', 'gupta', 'agra', '1202382218', 'student', '2002-01-16'),
('a018', 'namamish', 'awasthi', 'kanpur', '2302384248', 'student', '2001-04-19'),
('a019', 'ankan', 'kumar', 'patna', '1202384458', 'student', '2001-09-15'),
('a020', 'priyanshu', 'kumar', 'indore', '1232384248', 'student', '2002-07-10');

select * from readers;

INSERT INTO book (book_id, book_name, book_domain)
VALUES ('0001', 'think and grow rich', 'finance'),
('0002', 'to kill a mokingbird', 'fiction'),
('0003', 'a brief history of time', 'science'),
('0004', 'let us c', 'education'),
('0005', 'the power of your subsconsious mind', 'pschology'),
('0006', 'sapiens', 'history'),
('0007', 'kafka on the shore', 'fiction'),
('0008', 'intelligent investor', 'finance'),
('0009', 'as a man thinketh', 'philosophy'),
('0010', 'operating system concepts', 'education'),
('0011', 'database system concepts', 'education'),
('0012', 'data communication and networking', 'education'),
('0013', 'introduction to algorithms', 'education'),
('0014', 'compilers techniques tools', 'education'),
('0015', 'a thousand splendid suns', 'fiction'),
('0016', 'a silent patient', 'fiction'),
('0017', 'ikigai', 'health'),
('0018', 'richest man in babylon', 'finance'),
('0019', 'the alchemist', 'fiction'),
('0020', 'rich dad poor dad', 'finance'),
('0021', 'the eleven minutes', 'fiction'),
('0022', 'the pilgrimage', 'fiction'),
('0023', 'homo deus', 'history');


select * from book;

INSERT INTO active_readers (account_id, reader_id, book_id, account_type, account_status)
VALUES ('1001', 'a001', '0001', 'normal', 'active'),
('1002', 'a002', '0002', 'premium', 'active'),
('1003', 'a003', '0003', 'gold', 'passive'),
('1004', 'a004', '0004', 'platinum', 'active'),
('1005', 'a005', '0005', 'premium', 'active'),
('1006', 'a006', '0006', 'normal', 'passive'),
('1007', 'a007', '0007', 'gold', 'active'),
('1008', 'a008', '0008', 'normal', 'passive'),
('1009', 'a009', '0009', 'premium', 'active'),
('1010', 'a010', '0010', 'platinum', 'passive'),
('1011', 'a011', '0011', 'normal', 'active'),
('1012', 'a012', '0012', 'gold', 'passive'),
('1013', 'a013', '0013', 'normal', 'active'),
('1014', 'a014', '0014', 'platinum', 'passive'),
('1015', 'a015', '0015', 'normal', 'active'),
('1016', 'a016', '0016', 'gold', 'passive'),
('1017', 'a017', '0017', 'normal', 'active'),
('1018', 'a018', '0018', 'platinum', 'passive'),
('1019', 'a019', '0019', 'normal', 'active'),
('1020', 'a020', '0020', 'gold', 'active');

select * from active_readers;

INSERT INTO book_issue_details (issue_number, account_id, book_id, book_name, number_of_issued_books, issue_date)
VALUES ('i001', '1001', '0001', 'think and grow rich', 1, '2020-05-14'),
('i002', '1002', '0002', 'to kill a mokingbird', 1, '2021-03-02'),
('i003', '1003', '0003', 'a brief history of time', 2, '2020-02-23'),
('i004', '1004', '0004', 'let us c', 1, '2021-11-19'),
('i005', '1005', '0005', 'the power of your subsconsious mind', 3, '2020-10-04'),
('i006', '1006', '0006', 'sapiens', 1, '2021-09-09'),
('i007', '1007', '0007', 'kafka on the shore', 2, '2020-07-28'),
('i008', '1008', '0008', 'intelligent investor', 1, '2021-04-12'),
('i009', '1009', '0009', 'as a man thinketh', 1, '2020-05-14'),
('i010', '1010', '0010', 'operating system concepts', 3, '2021-05-04'),
('i011', '1011', '0011', 'database system concepts', 1, '2020-11-14'),
('i012', '1012', '0012', 'data communication and networking', 1, '2021-10-12'),
('i013', '1013', '0013', 'introduction to algorithms', 2, '2020-11-14'),
('i014', '1014', '0014', 'compilers techniques tools', 1, '2021-04-10'),
('i015', '1015', '0015', 'a thousand splendid suns', 2, '2020-05-14'),
('i016', '1016', '0016', 'a silent patient', 1, '2021-05-14'),
('i017', '1017', '0017', 'ikigai', 3, '2020-07-28'),
('i018', '1018', '0018', 'richest man in babylon', 1, '2021-05-01'),
('i019', '1019', '0019', 'the alchemist', 2, '2020-09-13'),
('i020', '1020', '0020', 'rich dad poor dad', 1, '2021-05-11'),
('i021', '1001', '0021', 'the eleven minutes', 1, '2021-03-11'),
('i022', '1002', '0022', 'the pilgrimage', 1, '2021-05-13'),
('i023', '1003', '0023', 'homo deus', 1, '2021-11-23'),
('i024', '1002', '0011', 'database system concepts', 1, '2021-11-23'),
('i025', '1005', '0009', 'as a man thinketh', 1, '2020-04-05'),
('i026', '1005', '0010', 'operating system concepts', 2, '2020-11-23'),
('i027', '1006', '0004', 'let us c', 2, '2020-01-11'),
('i028', '1006', '0013', 'introduction to algorithms', 2, '2021-05-04'),
('i029', '1007', '0016', 'a silent patient', 1, '2020-09-03'),
('i030', '1007', '0019', 'the alchemist', 2, '2021-10-27');


select * from book_issue_details;

INSERT INTO author (author_id, author_name, book_id)
VALUES ('m001', 'napoleon hill', '0001'),
('m002', 'harper lee', '0002'),
('m003', 'stephen hawking', '0003'),
('m004', 'yashavant kanetkar', '0004'),
('m005', 'joseph murphy', '0005'),
('m006', 'yuval noah harari', '0006'),
('m007', 'haruki murakami', '0007'),
('m008', 'benjamin graham', '0008'),
('m009', 'james allen', '0009'),
('m010', 'avi silberschatz', '0010'),
('m011', 'henry korth', '0011'),
('m012', 'forouzan', '0012'),
('m013', 'thomas cormen', '0013'),
('m014', 'alfred aho', '0014'),
('m015', 'khaled hosseini', '0015'),
('m016', 'alex michaelides', '0016'),
('m017', 'francesc miralles', '0017'),
('m018', 'george samuel clason', '0018'),
('m019', 'paulo coelho', '0019'),
('m020', 'robert kiyosaki', '0020'),
('m021', 'greg gagne', '0010'),
('m022', 'peter baer galvin', '0010'),
('m023', 's sudarshan', '0011'),
('m024', 'charles leiserson', '0011'),
('m025', 'ravi sethi', '0014'),
('m026', 'jeffrey ullman', '0014'),
('m027', 'yuval noah harari', '0023'),
('m028', 'paulo coelho', '0021'),
('m029', 'paulo coelho', '0022'),
('m030', 'avi silberschatz', '0011'),
('m031', 'behrouz', '0012');













/* ADV1: ACCOUNT FINDINGS*/

/*account findings(type wise)*/
SELECT * FROM active_readers
ORDER  BY account_status,account_type;



/*books issued by a person with author name */
SELECT book_name,issue_date,author.author_name
FROM book_issue_details
INNER JOIN author on author.book_id=book_issue_details.book_id
WHERE account_id='1007';



















/*ADV2:AUTHOR WISE SECTION*/


/* author wise books avilabe in our library */
SELECT book.book_name,author.author_name,author.book_id
FROM author
JOIN book ON author.book_id=book.book_id
GROUP BY author.author_name
ORDER BY author.author_name;























/*ADV3:INTREST WISE BOOK FINDING */

/*display book categories   along with its count*/
select book_domain,count(*) as count from book GROUP BY book_domain;



























/*ADV 4:REVANUE FACTOR*/

/*number of book sholud be ordered (new arrival)*/
SELECT count(account_id)
FROM active_readers 
WHERE account_type='premium'and account_status='active';



/*all reader present in library*/
SELECT count(account_id)
from active_readers;