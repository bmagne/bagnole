-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 21 Octobre 2015 à 15:16
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bagnole`
--

-- --------------------------------------------------------

--
-- Structure de la table `AVOIR`
--

CREATE TABLE IF NOT EXISTS `AVOIR` (
  `id` int(11) NOT NULL,
  `id_CAR_OPTIONS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `CAR`
--

CREATE TABLE IF NOT EXISTS `CAR` (
  `id` int(11) NOT NULL,
  `model` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `color` varchar(25) DEFAULT NULL,
  `id_CAR_TYPE` int(11) DEFAULT NULL,
  `id_USER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `CAR_OPTIONS`
--

CREATE TABLE IF NOT EXISTS `CAR_OPTIONS` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `CAR_TYPE`
--

CREATE TABLE IF NOT EXISTS `CAR_TYPE` (
  `id` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `mail` varchar(25) DEFAULT NULL,
  `address1` varchar(25) DEFAULT NULL,
  `address2` varchar(25) DEFAULT NULL,
  `post_code` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `id_USER_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `USER_TYPE`
--

CREATE TABLE IF NOT EXISTS `USER_TYPE` (
  `id` int(11) NOT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AVOIR`
--
ALTER TABLE `AVOIR`
  ADD PRIMARY KEY (`id`,`id_CAR_OPTIONS`), ADD KEY `FK_AVOIR_id_CAR_OPTIONS` (`id_CAR_OPTIONS`);

--
-- Index pour la table `CAR`
--
ALTER TABLE `CAR`
  ADD PRIMARY KEY (`id`), ADD KEY `FK_CAR_id_CAR_TYPE` (`id_CAR_TYPE`), ADD KEY `FK_CAR_id_USER` (`id_USER`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `FK_USER_id_USER_TYPE` (`id_USER_TYPE`);

--
-- Index pour la table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `CAR`
--
ALTER TABLE `CAR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `CAR_OPTIONS`
--
ALTER TABLE `CAR_OPTIONS`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `CAR_TYPE`
--
ALTER TABLE `CAR_TYPE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `USER`
--
ALTER TABLE `USER`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `USER_TYPE`
--
ALTER TABLE `USER_TYPE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `AVOIR`
--
ALTER TABLE `AVOIR`
ADD CONSTRAINT `FK_AVOIR_id_CAR_OPTIONS` FOREIGN KEY (`id_CAR_OPTIONS`) REFERENCES `CAR_OPTIONS` (`id`),
ADD CONSTRAINT `FK_AVOIR_id` FOREIGN KEY (`id`) REFERENCES `CAR` (`id`);

--
-- Contraintes pour la table `CAR`
--
ALTER TABLE `CAR`
ADD CONSTRAINT `FK_CAR_id_USER` FOREIGN KEY (`id_USER`) REFERENCES `USER` (`id`),
ADD CONSTRAINT `FK_CAR_id_CAR_TYPE` FOREIGN KEY (`id_CAR_TYPE`) REFERENCES `CAR_TYPE` (`id`);

--
-- Contraintes pour la table `USER`
--
ALTER TABLE `USER`
ADD CONSTRAINT `FK_USER_id_USER_TYPE` FOREIGN KEY (`id_USER_TYPE`) REFERENCES `USER_TYPE` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
