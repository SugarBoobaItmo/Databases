
INSERT INTO s368982.action (name) VALUES ('Прогулка');
INSERT INTO s368982.action (name) VALUES ('Перекус');
INSERT INTO s368982.action (name) VALUES ('Сон');
INSERT INTO s368982.action (name) VALUES ('Работа');
INSERT INTO s368982.action (name) VALUES ('Поиск');

INSERT INTO s368982.skill (name) VALUES ('Хождение');
INSERT INTO s368982.skill (name) VALUES ('Выполнение команд');
INSERT INTO s368982.skill (name) VALUES ('Поддержание разговора');
INSERT INTO s368982.skill (name) VALUES ('Выполнение простой работы');
INSERT INTO s368982.skill (name) VALUES ('Бег');
INSERT INTO s368982.skill (name) VALUES ('Плавание');
INSERT INTO s368982.skill (name) VALUES ('Прыжок');

INSERT INTO s368982.profession(name) VALUES ('Ученый');
INSERT INTO s368982.profession(name) VALUES ('Военный');
INSERT INTO s368982.profession(name) VALUES ('Полицейский');
INSERT INTO s368982.profession(name) VALUES ('Пожарный');
INSERT INTO s368982.profession(name) VALUES ('Медицинский');
INSERT INTO s368982.profession(name) VALUES ('Спасатель');
INSERT INTO s368982.profession(name) VALUES ('Подопытный');

INSERT INTO s368982.personality (name, description) VALUES ('Спокойная', 'Спокойная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Агрессивная', 'Агрессивная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Нейтральная', 'Нейтральная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Спокойная', 'Спокойная личность');


INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('ЭАЛ', false, 50, null, 7);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('ЭАЛ-2', false, 50, 2, null);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('Ученый_1', true, 70, 3, 2);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('Ученый_2', true, 90, 4, 1);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('Ученый_3', true, 100, 4, 1);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('Ученый_4', true, 100, 1, 1);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id, profession_id) VALUES ('Человек', true, 70, 1, 3);


INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (1, 6);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (2, 6);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (1, 3);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (1, 4);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (3, 5);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (4, 5);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (5, 5);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (6, 3);
INSERT INTO s368982.creature_skill (creature_id, skill_id) VALUES (6, 4);

INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 1, null, '0:00:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (2, 2, '00:20:00', '00:30:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (2, 3, '00:30:00', '00:40:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (3, 4, '00:40:00', '00:50:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 5, '00:50:00', '01:00:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (2, 5, '01:00:00', '01:10:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (3, 5, '01:10:00', '01:20:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (4, 5, '01:20:00', '01:30:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (5, 5, '01:30:00', '01:40:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (6, 5, '01:40:00', '01:50:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (7, 5, '01:50:00', '02:00:00');




