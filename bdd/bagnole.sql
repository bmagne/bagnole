-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 22 Octobre 2015 à 13:05
-- Version du serveur :  5.6.26
-- Version de PHP :  5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bagnole`
--

-- --------------------------------------------------------

--
-- Structure de la table `AVOIR`
--

CREATE TABLE IF NOT EXISTS `AVOIR` (
  `id` int(11) NOT NULL,
  `id_CAR` int(11) DEFAULT NULL,
  `id_CAR_OPTIONS` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `AVOIR`
--

INSERT INTO `AVOIR` (`id`, `id_CAR`, `id_CAR_OPTIONS`) VALUES
(1, 5, 11),
(2, 5, 12);

-- --------------------------------------------------------

--
-- Structure de la table `BUY`
--

CREATE TABLE IF NOT EXISTS `BUY` (
  `id` int(11) NOT NULL,
  `id_USER` int(11) DEFAULT NULL,
  `id_CAR` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `BUY`
--

INSERT INTO `BUY` (`id`, `id_USER`, `id_CAR`) VALUES
(3, 8, 5),
(4, 8, 6);

-- --------------------------------------------------------

--
-- Structure de la table `CAR`
--

CREATE TABLE IF NOT EXISTS `CAR` (
  `id` int(11) NOT NULL,
  `model` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `color` varchar(25) DEFAULT NULL,
  `id_CAR_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `CAR`
--

INSERT INTO `CAR` (`id`, `model`, `price`, `color`, `id_CAR_TYPE`) VALUES
(5, 'BMW x6', 45000, 'blanc', 9),
(6, 'Audi Q7', 45000, 'noir', 9);

-- --------------------------------------------------------

--
-- Structure de la table `CAR_OPTIONS`
--

CREATE TABLE IF NOT EXISTS `CAR_OPTIONS` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `CAR_OPTIONS`
--

INSERT INTO `CAR_OPTIONS` (`id`, `name`, `price`) VALUES
(11, 'toit ouvrant', 1500),
(12, 'GPS', 600);

-- --------------------------------------------------------

--
-- Structure de la table `CAR_TYPE`
--

CREATE TABLE IF NOT EXISTS `CAR_TYPE` (
  `id` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `CAR_TYPE`
--

INSERT INTO `CAR_TYPE` (`id`, `type`) VALUES
(9, '4x4');

-- --------------------------------------------------------

--
-- Structure de la table `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` char(10) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `address1` varchar(25) DEFAULT NULL,
  `address2` varchar(25) DEFAULT NULL,
  `post_code` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `id_USER_TYPE` int(11) DEFAULT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `USER`
--

INSERT INTO `USER` (`id`, `first_name`, `last_name`, `birth_date`, `phone_number`, `mail`, `address1`, `address2`, `post_code`, `city`, `country`, `id_USER_TYPE`, `password`) VALUES
(8, 'user', 'user', '2015-10-13', NULL, 'user@viacesi.fr', NULL, NULL, NULL, NULL, NULL, 5, 'azerty'),
(9, 'admin', 'admin', NULL, NULL, 'admin@viacesi.fr', NULL, NULL, NULL, NULL, NULL, 6, 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `USER_TYPE`
--

CREATE TABLE IF NOT EXISTS `USER_TYPE` (
  `id` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `USER_TYPE`
--

INSERT INTO `USER_TYPE` (`id`, `type`) VALUES
(5, 'user'),
(6, 'admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AVOIR`
--
ALTER TABLE `AVOIR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_AVOIR_CAR1_idx` (`id_CAR`),
  ADD KEY `fk_AVOIR_CAR_OPTIONS1_idx` (`id_CAR_OPTIONS`);

--
-- Index pour la table `BUY`
--
ALTER TABLE `BUY`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_BUY_USER1_idx` (`id_USER`),
  ADD KEY `fk_BUY_CAR1_idx` (`id_CAR`);

--
-- Index pour la table `CAR`
--
ALTER TABLE `CAR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CAR_id_CAR_TYPE` (`id_CAR_TYPE`);

--
-- Index pour la table `CAR_OPTIONS`
--
ALTER TABLE `CAR_OPTIONS`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `CAR_TYPE`
--
ALTER TABLE `CAR_TYPE`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_USER_id_USER_TYPE` (`id_USER_TYPE`);

--
-- Index pour la table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `AVOIR`
--
ALTER TABLE `AVOIR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `BUY`
--
ALTER TABLE `BUY`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `CAR`
--
ALTER TABLE `CAR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `CAR_OPTIONS`
--
ALTER TABLE `CAR_OPTIONS`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `CAR_TYPE`
--
ALTER TABLE `CAR_TYPE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `USER`
--
ALTER TABLE `USER`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `AVOIR`
--
ALTER TABLE `AVOIR`
  ADD CONSTRAINT `fk_AVOIR_CAR1` FOREIGN KEY (`id_CAR`) REFERENCES `CAR` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AVOIR_CAR_OPTIONS1` FOREIGN KEY (`id_CAR_OPTIONS`) REFERENCES `CAR_OPTIONS` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `BUY`
--
ALTER TABLE `BUY`
  ADD CONSTRAINT `fk_BUY_CAR1` FOREIGN KEY (`id_CAR`) REFERENCES `CAR` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_BUY_USER1` FOREIGN KEY (`id_USER`) REFERENCES `USER` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `CAR`
--
ALTER TABLE `CAR`
  ADD CONSTRAINT `FK_CAR_id_CAR_TYPE` FOREIGN KEY (`id_CAR_TYPE`) REFERENCES `CAR_TYPE` (`id`);

--
-- Contraintes pour la table `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `FK_USER_id_USER_TYPE` FOREIGN KEY (`id_USER_TYPE`) REFERENCES `USER_TYPE` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
