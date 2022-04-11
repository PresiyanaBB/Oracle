CREATE TABLE Genres(
id NUMBER(7) PRIMARY KEY NOT NULL
,genre_name VARCHAR2(25) NOT NULL UNIQUE
);

CREATE TABLE Movies(
id NUMBER(7) PRIMARY KEY NOT NULL
,genre_id NUMBER(7)
,title VARCHAR2(25) NOT NULL
,price NUMBER(6,2) NOT NULL
);

ALTER TABLE Movies ADD CONSTRAINT genre_movie_fk FOREIGN KEY (genre_id) REFERENCES Genres(id);

CREATE TABLE Customers(
id NUMBER(7) PRIMARY KEY NOT NULL
,first_name VARCHAR2(30) NOT NULL
,last_name VARCHAR2(30) NOT NULL
,egn CHAR(10) NOT NULL UNIQUE
);

CREATE TABLE Orders(
id NUMBER(10) PRIMARY KEY NOT NULL
,customer_id NUMBER(7) NOT NULL
,order_date DATE
);

CREATE TABLE OrderDetails(
order_id NUMBER(10) NOT NULL
,movie_id NUMBER(7) NOT NULL
);

ALTER TABLE Orders ADD CONSTRAINT order_customer_fk FOREIGN KEY (customer_id) REFERENCES Customers(id);

ALTER TABLE OrderDetails ADD CONSTRAINT details_order_id_fk FOREIGN KEY (order_id) REFERENCES Orders(id);

ALTER TABLE OrderDetails ADD CONSTRAINT details_movie_id_fk FOREIGN KEY (movie_id) REFERENCES Movies(id);






