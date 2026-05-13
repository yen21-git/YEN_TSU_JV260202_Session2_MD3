CREATE DATABASE liblary_db;
USE  liblary_db;
CREATE TABLE books (
    book_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL
);
CREATE TABLE readers (
    reader_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15)
);
CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    reader_id VARCHAR(10),
    book_id VARCHAR(10),
    borrow_date DATE,
    return_date DATE,

    CONSTRAINT fk_reader
        FOREIGN KEY (reader_id)
        REFERENCES readers(reader_id),

    CONSTRAINT fk_book
        FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);
ALTER TABLE borrowings
MODIFY borrow_date DATE NOT NULL;


        
	