-- Creating the Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    AuthorName VARCHAR(255) NOT NULL
);

-- Creating the Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(255) NOT NULL
);

-- Creating the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    YearPublished INT,
    ISBN VARCHAR(20),
    Status VARCHAR(20) DEFAULT 'Available',
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);



-- Inserting sample authors
INSERT INTO Authors (AuthorName) VALUES ('F. Scott Fitzgerald');

-- Inserting sample categories
INSERT INTO Categories (CategoryName) VALUES ('Fiction');

-- Inserting sample books
INSERT INTO Books (Title, AuthorID, CategoryID, YearPublished, ISBN)
VALUES ('The Great Gatsby', 1, 1, 1925, '9780743273565');
