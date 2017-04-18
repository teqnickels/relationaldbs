-- Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.

CREATE TABLE leggings(
id INTEGER PRIMARY KEY,
name TEXT,
color TEXT,
size TEXT,
quantity INTEGER
);

CREATE TABLE bras(
id INTEGER PRIMARY KEY,
name TEXT,
color TEXT,
size TEXT,
quantity INTEGER
);

CREATE TABLE tops(
id INTEGER PRIMARY KEY,
name TEXT,
color TEXT,
size TEXT,
quantity INTEGER
);

CREATE TABLE swimwear(
id INTEGER PRIMARY KEY,
name TEXT,
color TEXT,
size TEXT,
quantity INTEGER
);

INSERT INTO leggings VALUES(1, "Thunder Leggings", "Blue", "XL", 100);

INSERT INTO leggings VALUES(2, "Volcano Leggings", "Red", "XL", 200);

INSERT INTO leggings VALUES(3, "Earthy Leggings", "Green", "XL", 500);

INSERT INTO bras VALUES(4, "Earthy Sports Bra", "Green", "M", 300);

INSERT INTO bras VALUES(5, "Volcano Sports Bra", "Red", "M", 150);

INSERT INTO bras VALUES(6, "Volcano Sports Bra", "Red", "L", 150);

INSERT INTO bras VALUES(7, "Thunder Sports Bra", "Red", "M", 150);

INSERT INTO tops VALUES(8, "Volcano Top", "Red", "S", 150);

INSERT INTO tops VALUES(9, "Volcano Top", "Red", "M", 150);

INSERT INTO tops VALUES(10, "Volcano Top", "Red", "L", 150);

INSERT INTO leggings VALUES(11, "Earthy Leggings", "Green", "L", 200);

INSERT INTO leggings VALUES(12, "Earthy Leggings", "Brown", "M", 100);

INSERT INTO swimwear VALUES(13, "Earthy Bikini", "Yellow", "S", 50);

INSERT INTO swimwear VALUES(14, "Earthy Bikini", "Gren", "M", 100);

INSERT INTO swimwear VALUES(15, "Earthy Bikini", "Brown", "XL", 150);
