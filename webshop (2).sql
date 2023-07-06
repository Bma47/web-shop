-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 jul 2023 om 00:20
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `cart_items`
--

INSERT INTO `cart_items` (`id`, `name`, `title`, `image`, `price`, `quantity`) VALUES
(1, '', 'tombraider', 'tombraider.jpg', '33.00', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `aantel` decimal(12,2) NOT NULL,
  `free` varchar(255) NOT NULL,
  `best_sold` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.co/500x500',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`id`, `name`, `title`, `description`, `price`, `aantel`, `free`, `best_sold`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tomb Raider', '', 'Tomb Raider explores the intense and gritty origin story of Lara Croft and her ascent from a young woman to a hardened survivor. Armed only with raw instincts and the ability to push beyond the limits of human endurance, Lara must fight to unravel the dark history of a forgotten island to escape its relentless hold.', '50.00', '0.00', '', 0, 'tompraider.jpg', '2023-06-01 10:02:49', NULL),
(2, 'Grand Theft Auto V', '', 'Grand Theft Auto V is een actie-avonturenspel dat wordt gespeeld vanuit een third-person of first-person perspectief. Spelers voltooien missies - lineaire scenario\'s met vastgestelde doelen - om door het verhaal te komen. Buiten de missies kunnen spelers vrij rondlopen in de open wereld.', '50.00', '0.00', '', 5, 'grand-theft-auto-5-box-art.jpg', '2023-06-01 10:02:49', NULL),
(4, 'Tekken', '', 'TEKKEN 7 vertegenwoordigt het laatste hoofdstuk van de 20 jaar durende Mishima-vete. Onthul het epische einde van de emotioneel geladen familieoorlog tussen de leden van de Mishima-clan terwijl ze worstelen om oude rekeningen te vereffenen en worstelen om de controle over een wereldwijd imperium, waardoor het evenwicht van de wereld in gevaar komt.', '50.00', '0.00', '', 7, 'Tekken.jpg', '2023-06-01 10:21:11', NULL),
(5, 'Sonic Forces', '', 'Sonic Forces is an action-adventure platform game similar in gameplay and style to prior Sonic the Hedgehog games. The player\'s goal is to liberate the world from the newly established reign of Doctor Eggman.', '30.00', '0.00', '', 0, 'Sonic Forces.jpg', '2023-06-05 11:11:19', NULL),
(6, 'Mortal kombat', '', 'Mortal Kombat X is een vechtgame waarin twee personages tegen elkaar vechten met behulp van verschillende aanvallen, waaronder speciale moves en de gruwelijke finishing moves van de serie, Fatalities. In het spel kunnen twee spelers het tegen elkaar opnemen (lokaal of online), of een enkele speler kan tegen de CPU spelen.', '75.00', '0.00', '', 7, 'mortal.jpg', '2023-06-05 11:14:50', NULL),
(7, 'a plague tale innocence', '', 'Volg het grimmige verhaal van de jonge Amicia en haar kleine broertje Hugo, op een hartverscheurende reis door de donkerste uren van de geschiedenis. Opgejaagd door Inquisitie-soldaten en omringd door niet te stoppen zwermen ratten, zullen Amicia en Hugo elkaar leren kennen en vertrouwen.', '55.00', '0.00', '', 5, 'a plague tale innocence.jpg', '2023-06-11 10:44:17', NULL),
(8, 'Red Dead Redemption', '', 'Het verhaal speelt zich af in een gefictionaliseerde weergave van de Verenigde Staten in 1899 en volgt de heldendaden van outlaw Arthur Morgan, een lid van de Van der Linde-bende, die te maken krijgt met de neergang van het Wilde Westen terwijl hij probeert te overleven tegen regeringstroepen. rivaliserende bendes en andere tegenstanders.', '50.00', '0.00', '', 1, '2 Red Dead Redemption.jpg', '2023-06-11 11:48:51', NULL),
(9, 'Assassin\'s Creed', '', 'Assassin\'s Creed is een actie-avonturenspel, dat zich afspeelt in een open-wereldomgeving, dat wordt gespeeld vanuit een third-person-perspectief waarin de speler voornamelijk de rol van Altaïr op zich neemt, zoals ervaren door hoofdrolspeler Desmond Miles.', '50.00', '0.00', '', 5, 'Assassin\'s Creed.jpg', '2023-06-11 11:49:31', NULL),
(10, 'overwatch', '', 'Overwatch is een online teamspel dat over het algemeen wordt gespeeld als een first-person shooter. De game heeft verschillende spelmodi, voornamelijk gebaseerd op teamgebaseerde gevechten met twee tegengestelde teams van elk zes spelers.', '0.00', '0.00', '', 0, 'overwatch.avif', '2023-06-11 11:50:53', NULL),
(15, 'NFS underground 2', '', 'Underground 2 is de eerste game in de serie met een open wereld, waar spelers vrij rond kunnen rijden en de stad kunnen verkennen, waarbij ze gebieden kunnen vrijspelen door races te winnen. Racemodi zijn ongeveer gelijk aan Underground; één racemodus is geschrapt, dit zijn de knock-outcompetities.', '19.99', '0.00', '', 2, 'needforspeedunderground2.jpg', '2023-06-11 13:02:55', NULL),
(16, 'NFS Heat', '', 'Need for Speed Heat is een racegame die zich afspeelt in een open wereld genaamd Palm City, een gefictionaliseerde versie van Miami, Florida, en de omliggende gebieden. De in-game kaart bevat verschillende geografieën, waaronder bergachtige gebieden, dichte bossen en open velden.', '29.99', '0.00', '', 2, 'games/NFS-heat.jpg\r\n', '2023-06-11 13:02:55', NULL),
(17, 'street fighter', '', 'Street Fighter, ontworpen door Takashi Nishiyama en Hiroshi Matsumoto, debuteerde in 1987 in speelhallen. De speler bestuurt krijgskunstenaar Ryu om deel te nemen aan een wereldwijd vechtsporttoernooi in vijf landen en 10 tegenstanders. Een tweede speler kan Ryu\'s vriendelijke Amerikaanse rivaal, Ken Masters, besturen.', '40.00', '0.00', '', 7, 'street-fighter.jpg', '2023-06-11 13:25:38', NULL),
(18, 'virtua-fighter-5', '', 'Virtua Fighter 5 Ultimate Showdown werd officieel uitgebracht op 1 juni 2021 en bevat nieuwe personagekostuums, BGM, graphics en animaties, ontwikkeld door Ryu Ga Gotoku Studio (bekende ontwikkelaar van de Yakuza-serie) en mogelijk gemaakt door hun eigen ', '0.00', '0.00', '', 7, 'virtua-fighter-5.jpg', '2023-06-11 13:34:11', NULL),
(19, 'The King of Fighters XIII', '', 'Het verhaal van de games concentreert zich op het titeltoernooi waaraan vechters uit meerdere SNK-games deelnemen. SNK creëerde ook originele personages om als hoofdrolspelers uit elk van hun verhaallijnen te dienen, terwijl ze nog steeds interactie hadden met vechters van onder andere Art of Fighting en Fatal Fury.', '0.00', '0.00', '', 7, 'The King of Fighters XIII.png', '2023-06-11 13:34:11', NULL),
(20, 'Guilty Gear Strive', '', 'IGN zei: \"Guilty Gear Strive is een mijlpaal in 2D-vechtgame die de lat hoger legt voor anime-achtige vechters in termen van beeld, online netcode en pure creativiteit in alle aspecten van het ontwerp.\" GameSpot zei: \"Als je zin hebt in een uitdaging, of gewoon een cool, scherp uitziend vechtspel wilt om mee te rotzooien, ...', '30.00', '0.00', '', 7, 'Guilty Gear Strive.jpg', '2023-06-11 13:37:21', NULL),
(21, 'Dragon Ball FighterZ', '', 'DRAGON BALL FighterZ is ontstaan uit wat de DRAGON BALL-serie zo geliefd en beroemd maakt: eindeloze spectaculaire gevechten met zijn almachtige vechters. In samenwerking met Arc System Works maximaliseert DRAGON BALL FighterZ high-end Anime-graphics en biedt het gemakkelijk te leren maar moeilijk te beheersen vechtgameplay.', '35.00', '0.00', '', 7, 'Dragon-Ball-FighterZ.jpg', '2023-06-11 13:37:21', NULL),
(22, 'Ultimate Marvel vs. Capcom 3', '', 'Dit is een vechtgame in arcadestijl waarin spelers drie-tegen-drie-gevechten kunnen aangaan met personages uit de Marvel Comics- en Capcom-universums. Spelers slaan, trappen en gebruiken over-the-top aanvallen (bijv. laserstralen, vuurballen, blikseminslagen) om de levensmeters van tegenstanders uit te putten.', '55.00', '0.00', '', 7, 'Ultimate Marvel vs. Capcom 3.jpg', '2023-06-11 13:40:00', NULL),
(23, 'fifa 2023', '', 'WK-spelmodi\r\nFIFA 23 bevat de spelmodus Wereldbeker mannen en de spelmodus Wereldbeker vrouwen, die de FIFA Wereldbeker 2022 en de FIFA Wereldbeker Dames 2023 nabootsen. De 2022 FIFA World Cup-modus is op 9 november uitgebracht voor alle platforms behalve de Nintendo Switch Legacy Edition.', '65.00', '0.00', '', 4, 'fifa2023.jpg', '2023-06-11 13:43:46', NULL),
(24, 'NBA2k3', '', 'NBA 2K3 is een computerspel dat werd ontwikkeld door Visual Concepts en uitgegeven door Sega Sports. Het spel kwam in 2002 uit voor de GameCube, PlayStation 2 en Xbox. Met het sportspel kan de speler basketbal spelen. Het spel is de vierde uit de serie NBA 2K.', '49.99', '0.00', '', 4, 'nba2k3.jpg', '2023-06-11 13:43:46', NULL),
(25, 'tokyo2020', '', 'De game bevat 80 nationale teams en 18 evenementen. Spelers kunnen hun eigen spelers maken, hebben en spelen tegen fictieve spelers in elke modus, of gelicentieerde spelers door te spelen tegen topatleet in trainingsmodus.', '0.00', '0.00', '', 4, 'tokyo2020.jpg', '2023-06-11 13:43:46', NULL),
(26, 'WWE3k16', '', '', '55.00', '0.00', '', 4, 'WWE3k16.jpg', '2023-06-11 13:43:46', NULL),
(27, 'Tomp raider', '', 'Tomb Raider explores the intense and gritty origin story of Lara Croft and her ascent from a young woman to a hardened survivor. Armed only with raw instincts and the ability to push beyond the limits of human endurance, Lara must fight to unravel the dark history of a forgotten island to escape its relentless hold.', '50.00', '0.00', '', 5, 'tombraider.jpg', '2023-06-11 13:53:16', NULL),
(29, 'The Witcher 2', '', 'The Witcher 2: Assassins of Kings begint kort na de gebeurtenissen in The Witcher. Geralt is in wezen opgeroepen als de persoonlijke lijfwacht van koning Foltest en de koning is verwikkeld in een gevecht met troepen die loyaal zijn aan zijn minnares, de barones Mary Louisa La Valette, na wat het best kan worden omschreven als een ruzie tussen geliefden.', '40.00', '0.00', '', 1, 'The Witcher 2 Assassins of Kings.jpg', '2023-06-11 14:00:03', NULL),
(30, 'hitman', '', 'Hitman is een stealth-videogamefranchise gemaakt door IO Interactive. In elke aflevering nemen spelers de rol aan van een gekloonde huurmoordenaar genaamd Agent 47, die de wereld rondreist om verschillende doelen te vermoorden die hem zijn toegewezen door het fictieve International Contract Agency (ICA).', '65.00', '0.00', '', 1, 'hitman.jpg', '2023-06-11 14:02:52', NULL),
(31, 'CoD_Infinite_Warfare', '', 'Infinite Warfare biedt drie unieke spelmodi: Campagne, Multiplayer en Zombies. In Campaign spelen spelers als Captain Reyes, een piloot die commandant is geworden, die de resterende coalitietroepen moet leiden tegen een meedogenloze, fanatieke vijand, terwijl hij probeert de dodelijke, extreme omgevingen van de ruimte te overwinnen.', '35.00', '0.00', '', 1, 'CoD_Infinite_Warfare.jpg', '2023-06-11 14:03:43', NULL),
(32, 'Counter-Strike 2', '', 'Counter-Strike is een op doelen gebaseerde tactische first-person shooter voor meerdere spelers. Twee tegengestelde teams - de Terrorists en de Counter Terrorists - strijden in spelmodi om doelen te bereiken, zoals het veiligstellen van een locatie om een bom te plaatsen of onschadelijk te maken en het redden of bewaken van gijzelaars.', '30.00', '0.00', '', 3, 'cs2.jpg', '2023-06-11 14:05:45', NULL),
(33, 'Call of deuty', '', 'Call of Duty is een first-person shooter-videogame die zich afspeelt tijdens de gebeurtenissen in de Tweede Wereldoorlog. Het werd op 29 oktober 2003 uitgebracht voor de pc, uitgegeven door Activision en ontwikkeld door Infinity Ward.', '40.00', '0.00', '', 3, 'callofdeuty.jpg', '2023-06-11 14:09:08', NULL),
(34, 'valorant', '', 'Valorant is een teamgebaseerde first-person tactische heldenschieter die zich afspeelt in de nabije toekomst. Spelers spelen als een van een reeks agenten, personages gebaseerd op verschillende landen en culturen over de hele wereld. In de hoofdspelmodus worden spelers toegewezen aan het aanvallende of verdedigende team, waarbij elk team uit vijf spelers bestaat.', '20.00', '0.00', '', 3, 'valorant.jpg', '2023-06-11 14:09:08', NULL),
(35, 'overwatched', '', 'Overwatch is an online team-based game generally played as a first-person shooter. The game featured several different game modes, principally designed around squad-based combat with two opposing teams of six players each.', '25.00', '0.00', '', 3, 'overwatched.jpg', '2023-06-11 14:09:08', NULL),
(36, 'Asphalt  9', '', 'In Asphalt 9: Legends kunnen spelers achter het stuur kruipen van meer dan 50 prestigieuze droomauto\'s op de meest verbazingwekkende locaties in de echte wereld. Voltooi honderden evenementen in de solo-carrièremodus en neem het in realtime op tegen maximaal 8 spelers in de multiplayer-modus.', '39.99', '0.00', '', 2, 'Asphalt-9-Legends.jpg', '2023-06-11 14:13:07', NULL),
(37, 'forza horizon ', '', 'Forza Horizon richt zich specifiek op casual straatracen, in plaats van professioneel op racecircuits, aangezien het plaatsvindt op een kaart van tijdelijk afgesloten openbare wegen. De open-wereldkaart die spelers kunnen verkennen, is gebaseerd op de Amerikaanse staat Colorado.', '65.00', '0.00', '', 2, 'forza-horizon.jpg', '2023-06-11 14:13:07', NULL),
(40, 'Tomp raider', '', 'Tomb Raider explores the intense and gritty origin story of Lara Croft and her ascent from a young woman to a hardened survivor. Armed only with raw instincts and the ability to push beyond the limits of human endurance, Lara must fight to unravel the dark history of a forgotten island to escape its relentless hold.', '0.00', '0.00', '', 8, 'tompraider.jpg', '2023-06-12 12:15:54', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(20, 'hitman', 'images/games/hitman.jpg', 55.00),
(19, 'battlefield v', 'images/games/815OuvyY30L.jpg', 65.00),
(18, 'Red Dead Redemption', 'images/games/2 Red Dead Redemption.jpg', 50.00),
(17, 'Tomb raider', 'images/games/tombraider.jpg', 33.99),
(21, 'Resident Evil 4', 'images/games/Resident Evil.jpg', 55.00),
(22, 'spider-man', 'images/games/spider-man.jpg', 45.00),
(23, 'Mortal kombat', 'images/games/mortal kombat.jpg', 75.00),
(24, 'virtua-fighter-5', 'images/games/virtua-fighter-5.jpg', 49.99),
(25, 'The King of Fighters', 'images/games/The King of Fighters XIII.png', 65.00),
(26, 'Grand-theft-auto V', 'images/games/grand-theft-auto-5-box-art.jpg', 14.99),
(27, 'needforspeedunderground2', 'images/games/needforspeedunderground2.jpg', 20.00),
(28, 'NFS-heat', 'images/games/NFS-heat.jpg', 35.00),
(29, 'forza horizon ', 'images/games/forza-horizon.jpg', 65.00),
(30, 'The Witcher 2', 'images/games/The Witcher 2 Assassins of Kings.jpg', 35.00),
(31, 'NBA2K3', 'images/games/nba2k3.jpg', 40.00),
(32, 'Dragon-Ball-FighterZ', 'images/games/Dragon-Ball-FighterZ.jpg', 30.00),
(33, 'visage', 'images/games/visage.jpg', 20.00),
(34, 'WWE3k16', 'images/games/WWE3k16.jpg', 35.00),
(35, 'Asphalt 9', 'images/games/Asphalt-9-Legends.jpg', 13.00),
(36, 'CS2 counter strike', 'images/games/cs2.jpg', 0.00),
(37, 'Call of deuty', 'images/games/callofdeuty.jpg', 40.00);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(5, 'bashir', 'a@gmail.com', '$2y$10$Vna4ZQSZqa1nkZZ9z/XUJuG8LwzJWaB.M6axOhEgEnIroLx5k4Hxa');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT voor een tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
