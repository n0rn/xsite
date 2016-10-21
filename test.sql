-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 20 2016 г., 16:13
-- Версия сервера: 5.7.13
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Departments`
--

CREATE TABLE IF NOT EXISTS `Departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Departments`
--

INSERT INTO `Departments` (`id`, `name`) VALUES
(1, 'Департамент корпоративных продаж'),
(2, 'Департамент категорийного менеджмента'),
(3, 'Маркетинг и маркетинговые коммуникации.'),
(4, 'Финансовый департамент.'),
(5, 'Департамент управления цепями поставок.'),
(6, 'Отдел персонала');

-- --------------------------------------------------------

--
-- Структура таблицы `Positions`
--

CREATE TABLE IF NOT EXISTS `Positions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Positions`
--

INSERT INTO `Positions` (`id`, `name`) VALUES
(1, 'Менеджер по продажам'),
(2, 'Менеджер по персоналу'),
(3, 'Контент менеджер'),
(4, 'Офис менеджер'),
(5, 'Начальник отдела ');

-- --------------------------------------------------------

--
-- Структура таблицы `Rates`
--

CREATE TABLE IF NOT EXISTS `Rates` (
  `id` int(11) NOT NULL,
  `fixedPrice` float NOT NULL,
  `workedHours` int(11) NOT NULL,
  `rateHour` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birhday` date NOT NULL,
  `departmentId` varchar(255) NOT NULL,
  `posotionId` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `name`, `birhday`, `departmentId`, `posotionId`) VALUES
(1, 'Ветрова Виктория Викторовна', '1990-10-20', '1', '1'),
(2, 'Иванов Виктор Иванович', '1989-01-11', '1', '1'),
(3, 'Яновский Ярослав Сергеевич', '1986-02-08', '1', '	\r\n5'),
(4, 'Волвок Сергей Юрьевич', '1989-10-10', '2', '2'),
(5, 'Петров Петр Юрьевич', '1989-07-18', '3', '1'),
(6, 'Иванова ивана Сергеевна', '1985-09-16', '3', '5'),
(7, 'Иванов Василий Иванович', '1991-04-10', '2', '2'),
(8, 'Иванов Игорь Иванович', '1990-04-10', '2', '2'),
(9, 'Дорогая Елена Сернеевна', '1992-07-14', '6', '2'),
(10, 'Лапшина Ольга Сергеевна', '1986-01-20', '6', '5'),
(11, 'Соколов Егор Иванович', '1986-07-08', '4', '4'),
(12, 'Волкова Олег Иванович', '1988-03-16', '5', '4'),
(13, 'Семенов Егор Игоревич', '1990-10-03', '4', '2'),
(14, 'Лебедев Денис Александрович', '1989-11-03', '4', '2'),
(15, 'Морозов Денис Александрович', '1993-06-26', '2', '1'),
(16, 'Семенов Роман Геннадьевич', '1987-10-04', '3', '4'),
(17, 'Николаев Егор Игоревич\r\n', '1991-11-11', '4', '2'),
(18, 'Кузнецов Вадим  Игоревич', '1990-01-09', '4', '2'),
(19, 'Смирнова  Елена Дмитриевна', '1990-07-10', '3', '3'),
(20, 'Волкова Лариса Игорьевна', '1989-09-20', '3', '3'),
(21, 'Михайлов Олег Александрович', '1987-12-16', '1', '2'),
(22, 'Семенов Павел Сергеевич', '1990-05-20', '1', '2'),
(23, 'Попов Егор Игоревич', '1985-09-20', '4', '5'),
(24, 'Алексеев Олег Игоревич', '1985-02-20', '2', '5'),
(25, 'Степанов Никита Сергеевич', '1990-08-20', '5', '5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Rates`
--
ALTER TABLE `Rates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Departments`
--
ALTER TABLE `Departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `Positions`
--
ALTER TABLE `Positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `Rates`
--
ALTER TABLE `Rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
