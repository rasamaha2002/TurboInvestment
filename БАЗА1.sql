
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 01 2015 г., 04:35
-- Версия сервера: 5.1.66
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u785403201_shahe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `db_adm`
--

CREATE TABLE IF NOT EXISTS `db_adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) NOT NULL,
  `pass` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_adm`
--

INSERT INTO `db_adm` (`id`, `login`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `db_deposit`
--

CREATE TABLE IF NOT EXISTS `db_deposit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(12) NOT NULL,
  `login` varchar(55) NOT NULL,
  `date_start` int(13) NOT NULL,
  `date_end` int(13) NOT NULL,
  `summa` float NOT NULL,
  `percent` float NOT NULL,
  `count` int(13) NOT NULL,
  `count_full` int(13) NOT NULL,
  `status` int(1) NOT NULL,
  `id_trans` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=962 ;

--
-- Дамп данных таблицы `db_deposit`
--

INSERT INTO `db_deposit` (`id`, `id_user`, `login`, `date_start`, `date_end`, `summa`, `percent`, `count`, `count_full`, `status`, `id_trans`) VALUES
(1, 0, 'suvorov', 1416496313, 1416575418, 1000, 0, 1, 0, 1, 0),
(952, 0, 'jackpott', 1416496313, 1416575861, 4500, 0, 1, 0, 1, 0),
(953, 0, 'kaluga', 1416496313, 1416575868, 7200, 0, 1, 0, 1, 0),
(954, 0, 'moskall', 1416496313, 1416575870, 50, 0, 1, 0, 1, 0),
(955, 0, 'europa', 1416496313, 1416575873, 850, 0, 1, 0, 1, 0),
(956, 0, 'foma', 1416496313, 1416576111, 11000, 0, 1, 0, 1, 0),
(957, 0, 'idris', 1416496313, 1416576117, 2500, 0, 1, 0, 1, 0),
(958, 0, 'viragocc110', 1416496313, 1416576152, 5000, 0, 1, 0, 1, 0),
(959, 0, 'paper', 1416496313, 1416576177, 150, 0, 1, 0, 1, 0),
(960, 0, 'xuzerlla', 1416496313, 1416576219, 561, 0, 1, 0, 1, 0),
(961, 3203, 'admin', 1425142152, 1425228552, 10, 50, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `db_fake`
--

CREATE TABLE IF NOT EXISTS `db_fake` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `vivod` double(10,2) NOT NULL,
  `pay` double(10,2) NOT NULL,
  `qiwi` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_fake`
--

INSERT INTO `db_fake` (`id`, `user`, `vivod`, `pay`, `qiwi`) VALUES
(1, 1, 0.00, 0.00, '');

-- --------------------------------------------------------

--
-- Структура таблицы `db_insert`
--

CREATE TABLE IF NOT EXISTS `db_insert` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) NOT NULL,
  `user_id` int(13) NOT NULL,
  `summa` float NOT NULL,
  `batch` varchar(55) NOT NULL,
  `date` int(13) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_insert`
--

INSERT INTO `db_insert` (`id`, `login`, `user_id`, `summa`, `batch`, `date`, `status`) VALUES
(1, 'admin', 3203, 10, 'gjgkghkdjdghj', 1425142152, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `db_insert_payeer`
--

CREATE TABLE IF NOT EXISTS `db_insert_payeer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `summa` double NOT NULL,
  `user_id` int(10) NOT NULL,
  `login` varchar(55) NOT NULL,
  `date` int(13) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_news`
--

CREATE TABLE IF NOT EXISTS `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(13) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `db_news`
--

INSERT INTO `db_news` (`id`, `date`, `title`, `text`, `img`) VALUES
(3, 1416492679, 'Зарабатывайте с нами!', 'Чтобы сделать свой первый вклад, достаточно пары кликов. Наш проект поможет заработать даже новичку, который не имеет опыта и знаний, но зато имеет желание разобраться с тем, как можно зарабатывать деньги с минимальными вложениями!', '');

-- --------------------------------------------------------

--
-- Структура таблицы `db_online`
--

CREATE TABLE IF NOT EXISTS `db_online` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `db_online`
--

INSERT INTO `db_online` (`id`, `ip`, `date`) VALUES
(0, '217.76.3.221', 1425184296),
(0, '217.76.3.239', 1425183977),
(0, '217.76.3.217', 1425183973),
(0, '217.76.3.234', 1425183969),
(0, '217.76.3.250', 1425183965),
(0, '217.76.3.197', 1425183959),
(0, '217.76.3.228', 1425183942),
(0, '217.76.3.251', 1425183949),
(0, '217.76.3.225', 1425183953),
(0, '217.76.3.219', 1425183926),
(0, '217.76.3.200', 1425184010),
(0, '217.76.3.198', 1425183899),
(0, '217.76.3.249', 1425183717),
(0, '217.76.3.213', 1425183921),
(0, '217.76.3.246', 1425184072),
(0, '217.76.3.222', 1425183896),
(0, '217.76.3.206', 1425184083);

-- --------------------------------------------------------

--
-- Структура таблицы `db_otziv`
--

CREATE TABLE IF NOT EXISTS `db_otziv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `date` int(11) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=256 ;

--
-- Дамп данных таблицы `db_otziv`
--

INSERT INTO `db_otziv` (`id`, `name`, `date`, `text`, `status`, `img`) VALUES
(4, 'RenesMy', 1416058335, 'GOOD ', 1, ''),
(13, 'reedur', 1416165076, 'Вкладывайте ребята! Все честно.', 1, ''),
(18, 'tatarin99', 1416165300, 'Все работает! Люди регистрируемся!!!', 1, ''),
(22, 'bizo4ik', 1416165427, 'Решил попробовать, все получилось!', 1, ''),
(27, 'uvbuwsq123', 1416165591, 'Все работает! Спасибо проекту)', 1, ''),
(29, 'perss', 1416165647, 'Спасибо Вам за такой проект! Надеюсь на долгое сотрудничество!)', 1, ''),
(30, 'valerik', 1416165721, '\r\nСпасибо админу за этот проект,реально все работает)надеюсь проект проживет долго)', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `db_stats`
--

CREATE TABLE IF NOT EXISTS `db_stats` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `popol` float NOT NULL,
  `vivod` float NOT NULL,
  `user` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_stats`
--

INSERT INTO `db_stats` (`id`, `popol`, `vivod`, `user`) VALUES
(1, 10, 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `db_sup`
--

CREATE TABLE IF NOT EXISTS `db_sup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login` varchar(55) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_sup_text`
--

CREATE TABLE IF NOT EXISTS `db_sup_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tik` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login` varchar(55) NOT NULL,
  `text` text NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_users`
--

CREATE TABLE IF NOT EXISTS `db_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) CHARACTER SET cp1251 NOT NULL,
  `pass` varchar(55) CHARACTER SET cp1251 NOT NULL,
  `date_reg` int(11) NOT NULL,
  `refer` int(10) NOT NULL,
  `kol_ref` int(11) NOT NULL,
  `money_in` float NOT NULL,
  `money_out` float NOT NULL,
  `ref_sum` float NOT NULL,
  `ip` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `qiwi` varchar(15) NOT NULL,
  `ban` int(1) NOT NULL,
  `ref_perc` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3208 ;

--
-- Дамп данных таблицы `db_users`
--

INSERT INTO `db_users` (`id`, `login`, `pass`, `date_reg`, `refer`, `kol_ref`, `money_in`, `money_out`, `ref_sum`, `ip`, `email`, `qiwi`, `ban`, `ref_perc`) VALUES
(3204, 'Danilos', 'c6fc434dbc4b17078de8ad72717cbe4d', 1421509079, 1, 1, 0, 0, 0, '31.202.242.107', 'danil.golovin.05@mail.ru', ' 380683129239', 0, 0),
(3203, 'admin', '39fa02a522de2f3b10f6797ffcf470cd', 1421255699, 1, 0, 0, 0, 0, '178.160.152.221', 'gazanik_skajs@bk.ru', 'fdsfsdfsdfsdgfs', 0, 0),
(3205, 'Danilka', '3d109c9f18e20b3f295cc5f236a5ed74', 1421509616, 3204, 0, 0, 0, 0, '31.202.242.107', 'danil.ldg@mail.ru', '380683129239', 0, 0),
(3206, 'URIK151', 'd9883017a561f45e6b0bb61fead56cc3', 1421772279, 1, 0, 0, 0, 0, '77.45.172.216', 'elenayuriewna.ur2010@yandex.ru', ' 79507772700', 0, 0),
(3207, 'qwer', '694de2477188d53558b7e354abe29791', 1425125717, 1, 0, 0, 0, 0, '46.229.140.212', 'dfghj@mail.ru', ' 79585845685', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `db_vivod`
--

CREATE TABLE IF NOT EXISTS `db_vivod` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(55) NOT NULL,
  `user_id` int(10) NOT NULL,
  `summa` float NOT NULL,
  `batch` varchar(55) NOT NULL,
  `date` int(13) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=241 ;

-- --------------------------------------------------------

--
-- Структура таблицы `poll_question`
--

CREATE TABLE IF NOT EXISTS `poll_question` (
  `quest_id` int(5) NOT NULL AUTO_INCREMENT,
  `quest_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quest_act` int(1) NOT NULL,
  PRIMARY KEY (`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `poll_variant`
--

CREATE TABLE IF NOT EXISTS `poll_variant` (
  `var_id` int(5) NOT NULL AUTO_INCREMENT,
  `var_id_quest` int(5) NOT NULL,
  `var_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `var_voice` int(4) NOT NULL,
  PRIMARY KEY (`var_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
