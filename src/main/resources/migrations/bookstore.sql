CREATE SEQUENCE book_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
CREATE TABLE book (book_id integer NOT NULL, title varchar(128) NOT NULL, author varchar(45) NOT NULL, price float NOT NULL, PRIMARY KEY(book_id));

ALTER SEQUENCE book_id_seq OWNED BY book.book_id;
ALTER TABLE ONLY book ALTER COLUMN book_id SET DEFAULT nextval('book_id_seq'::regclass);
