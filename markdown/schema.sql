--List all files
--List all files ordered by their latest edit time (most recent first)
--Show file with particular name
--Get text content of file with particular name
--List created date of all files
--List every file name and its word count


DROP TABLE IF EXISTS files;
CREATE TABLE files (
  id SERIAL,
  name VARCHAR,
  content VARCHAR,
  track TIMESTAMP NOT NULL DEFAULT NOW()
);


INSERT INTO files (name, content) VALUES( 'First Entry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet, purus in facilisis scelerisque, lorem ligula mattis libero, a malesuada ante dui id enim. Aliquam odio sapien, ullamcorper eget indentifier-a pretium ac, vulputate non ligula. In risus nisi, imperdiet sit amet dui faucibus, gravida ornare metus. Morbi eget lacinia tortor. Curabitur vehicula a quam vitae lobortis. Morbi velit nisi, molestie sed rutrum ac, dictum luctus diam. Vestibulum imperdiet ut diam placerat tincidunt.');

INSERT INTO files(name, content) VALUES( 'Second Entry', 'Pellentesque mollis orci vitae odio maximus, quis tincidunt leo mattis. Vestibulum ante nulla, molestie eget quam in, sollicitudin dictum eros. Suspendisse turpis nunc, lacinia vel ullamcorper eu, cursus in arcu. Nam non gravida urna. Suspendisse convallis ligula posuere indentifier-b, viverra ipsum sed, viverra nisi. Phasellus elementum nibh et ex molestie, in venenatis ex porttitor. Vivamus id est ut arcu faucibus malesuada ut id leo. Nulla et mauris arcu. Donec luctus, velit at condimentum pharetra, enim dolor condimentum libero, mattis rutrum metus felis a tellus. Cras accumsan pulvinar felis, eu varius nulla interdum quis.');

INSERT INTO files(name, content) VALUES('Third Entry', 'Vivamus lacinia, dolor a mollis pellentesque, magna dolor aliquet tortor, et varius felis leo at augue. Sed mollis interdum laoreet. Pellentesque id fringilla justo. Donec tristique odio ut quam hendrerit pretium id ut nisi. Morbi vel massa sed ipsum lobortis posuere vel tempus dolor. Ut consectetur dolor eget pretium egestas. Vivamus lacinia erat mi, at dignissim nulla lobortis non. Sed quis tempor dui. Nulla pulvinar mi at tellus pulvinar dapibus. Morbi et tempus ex. Cras sit amet erat indentifier-c accumsan, vestibulum tortor at, tempus velit. Suspendisse id diam nunc. Nulla facilisi. Aenean sagittis aliquam odio sed luctus. Suspendisse vulputate eros sit amet elit eleifend, nec interdum lorem tristique. Aliquam fermentum sapien et commodo aliquet.');

SELECT * FROM files;
SELECT * WHERE files = 'Third Entry';
SELECT * FROM files ORDER BY TIMESTAMP;
SELECT * FROM files WHERE name = 'Third Entry';
SELECT content FROM files WHERE name = 'First Entry';
SELECT track FROM files;
SELECT * FROM files WHERE array_length(regexp_split_to_array(content, '\s+'), 1) > 0;
