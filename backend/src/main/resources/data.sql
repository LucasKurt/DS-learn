INSERT INTO tb_user (name, email, password) VALUES ('Alex STUDENT', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob INSTRUCTOR', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria ADMIN', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Curso HTML 5', 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 'https://codegate01.com/wp-content/uploads/2020/05/curso-html.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha das aulas do curso', 1, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 1, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 2, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives bonus', 'Lives exclusivas para a turma', 3, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 0, 1); 

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-html_1966.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_moment, available, only_Update) VALUES (1, 1, now(), null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_moment, available, only_Update) VALUES (2, 1, now(), null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do cap 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'video da aula 1', 'https://youtu.be/D4frmIHAxEY');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do cap 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'video da aula 2', 'https://youtu.be/D4frmIHAxEY');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do cap 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'video da aula 3', 'https://youtu.be/D4frmIHAxEY');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('tarefa do cap 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'fazer o trabalho bem feito', 5, 4, 1.0, now());

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 2, 1);
