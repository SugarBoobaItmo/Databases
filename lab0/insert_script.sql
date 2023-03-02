INSERT INTO s368982.action (name) VALUES ('Хождение');
INSERT INTO s368982.action (name) VALUES ('Выполнение команд');
INSERT INTO s368982.action (name) VALUES ('Поддержание разговора');
INSERT INTO s368982.action (name) VALUES ('Выполнение простой работы');
INSERT INTO s368982.action (name) VALUES ('Бег');
INSERT INTO s368982.action (name) VALUES ('Плавание');
INSERT INTO s368982.action (name) VALUES ('Прыжок');


INSERT INTO s368982.personality (name, description) VALUES ('Спокойная', 'Спокойная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Агрессивная', 'Агрессивная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Нейтральная', 'Нейтральная личность');
INSERT INTO s368982.personality (name, description) VALUES ('Спокойная', 'Спокойная личность');


INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('ЭАЛ', false, 50, null);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('ЭАЛ-2', false, 50, 2);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('Ученый_1', true, 70, 3);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('Ученый_2', true, 90, 4);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('Ученый_3', true, 100, 4);
INSERT INTO s368982.creature (name, is_human, ki_grade, personality_id) VALUES ('Ученый_4', true, 100, 1);


INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (1, 1);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (1, 2);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (1, 3);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (1, 4);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (3, 5);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (4, 5);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (5, 5);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (6, 3);
INSERT INTO s368982.creatures_ability (creature_id, action_id) VALUES (6, 4);

INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 1, '00:00:00', '00:00:20');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 2, '00:00:20', '00:00:40');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 3, '00:00:40', '00:01:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (1, 4, '00:01:00', '00:01:20');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (3, 5, '00:01:20', '00:01:40');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (4, 5, '00:01:40', '00:02:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (5, 5, '00:02:00', '00:02:20');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (6, 3, '00:02:20', '00:02:40');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (6, 4, '00:02:40', '00:03:00');
INSERT INTO s368982.creature_action (creature_id, action_id, start_time, end_time) VALUES (6, 2, '00:03:00', '00:03:20');


