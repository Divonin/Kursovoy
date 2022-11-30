-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 30 2022 г., 14:23
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `20099_db_stom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `name` varchar(15) NOT NULL,
  `father_name` varchar(15) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `passport_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`id_client`, `last_name`, `name`, `father_name`, `phone_number`, `mail`, `passport_details`) VALUES
(1, 'Иванов', 'Игнат', 'Иванович', 2147483647, 'IV@mail.ru', '4578 654897');

-- --------------------------------------------------------

--
-- Структура таблицы `preparation`
--

CREATE TABLE `preparation` (
  `id_preparation` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `preparation`
--

INSERT INTO `preparation` (`id_preparation`, `name`) VALUES
(1, 'Ледокаин');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id_services` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `dose_preparation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id_services`, `name`, `cost`, `dose_preparation`) VALUES
(1, 'Пломбирование', 6900, 'Ультракаин 5млгрм');

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id_worker` int(11) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `father_name` varchar(15) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `education` varchar(15) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `passport_details` varchar(100) NOT NULL,
  `cabinet` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id_worker`, `last_name`, `name`, `father_name`, `phone_number`, `education`, `mail`, `passport_details`, `cabinet`, `start`, `end`) VALUES
(2, 'Бодров', 'Иван', 'Игнатьевич', 2147483647, 'Высшее', 'Bod@mail.ru', '5175 789845', 15, '2022-11-15', '2022-11-18');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `father_name` varchar(15) NOT NULL,
  `password` int(11) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_users`, `name`, `last_name`, `father_name`, `password`, `role`) VALUES
(1, 'Иван', 'Бодров', 'Игнатьевич', 150160, 2),
(2, 'Александр', 'Шкендеров', 'Евгеньевич', 88008800, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Индексы таблицы `preparation`
--
ALTER TABLE `preparation`
  ADD PRIMARY KEY (`id_preparation`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_services`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_worker`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `preparation`
--
ALTER TABLE `preparation`
  MODIFY `id_preparation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id_worker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
