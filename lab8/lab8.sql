SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `users` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    username varchar(100) COLLATE utf8_unicode_ci NOT NULL,
    password varchar(100) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `projects` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tasks` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    project_id int(11) UNSIGNED NOT NULL,
    author_id int(11) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `assignees` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    task_id int(11) UNSIGNED NOT NULL,
    user_id int(11) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `project_members` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    project_id int(11) UNSIGNED NOT NULL,
    user_id int(11) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `files` (
	id int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    url varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    project_id int(11) UNSIGNED,
    task_id int(11) UNSIGNED,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

