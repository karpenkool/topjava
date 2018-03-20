DELETE FROM user_roles;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
  ('User', 'user@yandex.ru', 'password'),
  ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);

INSERT INTO meals (date_time, description, calories, user_id) VALUES
  ('2017-10-19 10:23:54', 'завтрак', 100,100000),
  ('2017-10-19 13:23:54', 'обед', 200, 100000),
  ('2017-10-19 19:23:54', 'ужин', 50, 100000),
  ('2017-10-20 10:23:54', 'завтрак', 1000,100000),
  ('2017-10-20 13:23:54', 'обед', 2000, 100000),
  ('2017-10-20 19:23:54', 'ужин', 500, 100000);
