-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.27-0ubuntu0.16.04.1 - (Ubuntu)
-- SE du serveur:                Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table smaggraphique_beta. continent
CREATE TABLE IF NOT EXISTS `continent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_language` tinyint(1) DEFAULT NULL,
  `code_language` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table smaggraphique_beta.continent : ~7 rows (environ)
DELETE FROM `continent`;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;
INSERT INTO `continent` (`id`, `name`, `website_language`, `code_language`, `code`) VALUES
	(1, 'Amérique du nord', NULL, NULL, 'AN'),
	(2, 'Amérique Latine', NULL, NULL, 'AS'),
	(3, 'Antartique', NULL, NULL, 'ANT'),
	(4, 'Asie', NULL, NULL, 'AS'),
	(5, 'Europe', NULL, NULL, 'EUR'),
	(6, 'Afrique', NULL, NULL, 'AF'),
	(7, 'Océanie', NULL, NULL, 'OC'),
	(8, 'continent test', NULL, NULL, 'TES'),
	(9, 'Moyen-Orient', NULL, NULL, 'MO');
/*!40000 ALTER TABLE `continent` ENABLE KEYS */;

-- Listage de la structure de la table smaggraphique_beta. country
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_continent` int(11) DEFAULT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `website_language` tinyint(1) DEFAULT NULL,
  `code_language` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5373C966ECF2B05B` (`id_continent`),
  CONSTRAINT `FK_5373C966ECF2B05B` FOREIGN KEY (`id_continent`) REFERENCES `continent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table smaggraphique_beta.country : ~246 rows (environ)
DELETE FROM `country`;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `id_continent`, `code`, `name`, `active`, `website_language`, `code_language`) VALUES
	(1, 4, 'AF', 'Afghanistan', 1, NULL, NULL),
	(2, 5, 'AL', 'Albania', 1, NULL, NULL),
	(3, 6, 'DZ', 'Algeria', 1, NULL, NULL),
	(4, 7, 'DS', 'American Samoa', 1, NULL, NULL),
	(5, 5, 'AD', 'Andorra', 1, NULL, NULL),
	(6, 6, 'AO', 'Angola', 1, NULL, NULL),
	(7, 2, 'AI', 'Anguilla', 1, NULL, NULL),
	(8, 3, 'AQ', 'Antarctica', 1, NULL, NULL),
	(9, 2, 'AG', 'Antigua and Barbuda', 1, NULL, NULL),
	(10, 2, 'AR', 'Argentina', 1, NULL, NULL),
	(11, 4, 'AM', 'Armenia', 1, NULL, NULL),
	(12, 2, 'AW', 'Aruba', 1, NULL, NULL),
	(13, 7, 'AU', 'Australia', 1, NULL, NULL),
	(14, 5, 'AT', 'Austria', 1, NULL, NULL),
	(15, 4, 'AZ', 'Azerbaijan', 1, NULL, NULL),
	(16, 2, 'BS', 'Bahamas', 1, NULL, NULL),
	(17, 4, 'BH', 'Bahrain', 1, NULL, NULL),
	(18, 4, 'BD', 'Bangladesh', 1, NULL, NULL),
	(19, 2, 'BB', 'Barbados', 1, NULL, NULL),
	(20, 5, 'BY', 'Belarus', 1, NULL, NULL),
	(21, 5, 'BE', 'Belgium', 1, NULL, NULL),
	(22, 2, 'BZ', 'Belize', 1, NULL, NULL),
	(23, 6, 'BJ', 'Benin', 1, NULL, NULL),
	(24, 2, 'BM', 'Bermuda', 1, NULL, NULL),
	(25, 4, 'BT', 'Bhutan', 1, NULL, NULL),
	(26, 2, 'BO', 'Bolivia', 1, NULL, NULL),
	(27, 5, 'BA', 'Bosnia and Herzegovina', 1, NULL, NULL),
	(28, 6, 'BW', 'Botswana', 1, NULL, NULL),
	(29, 3, 'BV', 'Bouvet Island', 1, NULL, NULL),
	(30, 2, 'BR', 'Brazil', 1, NULL, NULL),
	(31, 3, 'IO', 'British Indian Ocean Territory', 1, NULL, NULL),
	(32, 7, 'BN', 'Brunei Darussalam', 1, NULL, NULL),
	(33, 5, 'BG', 'Bulgaria', 1, NULL, NULL),
	(34, 6, 'BF', 'Burkina Faso', 1, NULL, NULL),
	(35, 6, 'BI', 'Burundi', 1, NULL, NULL),
	(36, 4, 'KH', 'Cambodia', 1, NULL, NULL),
	(37, 6, 'CM', 'Cameroon', 1, NULL, NULL),
	(38, 1, 'CA', 'Canada', 1, NULL, NULL),
	(39, 6, 'CV', 'Cape Verde', 1, NULL, NULL),
	(40, 2, 'KY', 'Cayman Islands', 1, NULL, NULL),
	(41, 6, 'CF', 'Central African Republic', 1, NULL, NULL),
	(42, 6, 'TD', 'Chad', 1, NULL, NULL),
	(43, 2, 'CL', 'Chile', 1, NULL, NULL),
	(44, 4, 'CN', 'China', 1, NULL, NULL),
	(45, 7, 'CX', 'Christmas Island', 1, NULL, NULL),
	(46, 4, 'CC', 'Cocos (Keeling) Islands', 1, NULL, NULL),
	(47, 2, 'CO', 'Colombia', 1, NULL, NULL),
	(48, 6, 'KM', 'Comoros', 1, NULL, NULL),
	(49, 6, 'CD', 'Democratic Republic of the Congo', 1, NULL, NULL),
	(50, 6, 'CG', 'Republic of Congo', 1, NULL, NULL),
	(51, 5, 'CK', 'Cook Islands', 1, NULL, NULL),
	(52, 1, 'CR', 'Costa Rica', 1, NULL, NULL),
	(53, 5, 'HR', 'Croatia (Hrvatska)', 1, NULL, NULL),
	(54, 1, 'CU', 'Cuba', 1, NULL, NULL),
	(55, 4, 'CY', 'Cyprus', 1, NULL, NULL),
	(56, 5, 'CZ', 'Czech Republic', 1, NULL, NULL),
	(57, 5, 'DK', 'Denmark', 1, NULL, NULL),
	(58, 6, 'DJ', 'Djibouti', 1, NULL, NULL),
	(59, 1, 'DM', 'Dominica', 1, NULL, NULL),
	(60, 1, 'DO', 'Dominican Republic', 1, NULL, NULL),
	(61, 7, 'TP', 'East Timor', 1, NULL, NULL),
	(62, 2, 'EC', 'Ecuador', 1, NULL, NULL),
	(63, 6, 'EG', 'Egypt', 1, NULL, NULL),
	(64, 1, 'SV', 'El Salvador', 1, NULL, NULL),
	(65, 6, 'GQ', 'Equatorial Guinea', 1, NULL, NULL),
	(66, 6, 'ER', 'Eritrea', 1, NULL, NULL),
	(67, 5, 'EE', 'Estonia', 1, NULL, NULL),
	(68, 6, 'ET', 'Ethiopia', 1, NULL, NULL),
	(69, 2, 'FK', 'Falkland Islands (Malvinas)', 1, NULL, NULL),
	(70, 5, 'FO', 'Faroe Islands', 1, NULL, NULL),
	(71, 7, 'FJ', 'Fiji', 1, NULL, NULL),
	(72, 5, 'FI', 'Finland', 1, NULL, NULL),
	(73, 5, 'FR', 'France', 1, 1, 'fr'),
	(74, 5, 'FX', 'France, Metropolitan', 1, NULL, NULL),
	(75, 2, 'GF', 'French Guiana', 1, NULL, NULL),
	(76, 7, 'PF', 'French Polynesia', 1, NULL, NULL),
	(77, 7, 'TF', 'French Southern Territories', 1, NULL, NULL),
	(78, 6, 'GA', 'Gabon', 1, NULL, NULL),
	(79, 6, 'GM', 'Gambia', 1, NULL, NULL),
	(80, 4, 'GE', 'Georgia', 1, NULL, NULL),
	(81, 5, 'DE', 'Germany', 1, NULL, NULL),
	(82, 6, 'GH', 'Ghana', 1, NULL, NULL),
	(83, 5, 'GI', 'Gibraltar', 1, NULL, NULL),
	(84, 5, 'GK', 'Guernsey', 1, NULL, NULL),
	(85, 5, 'GR', 'Greece', 1, NULL, NULL),
	(86, 5, 'GL', 'Greenland', 1, NULL, NULL),
	(87, 1, 'GD', 'Grenada', 1, NULL, NULL),
	(88, 1, 'GP', 'Guadeloupe', 1, NULL, NULL),
	(89, 7, 'GU', 'Guam', 1, NULL, NULL),
	(90, 1, 'GT', 'Guatemala', 1, NULL, NULL),
	(91, 7, 'GN', 'Guinea', 1, NULL, NULL),
	(92, 6, 'GW', 'Guinea-Bissau', 1, NULL, NULL),
	(93, 2, 'GY', 'Guyana', 1, NULL, NULL),
	(94, 1, 'HT', 'Haiti', 1, NULL, NULL),
	(95, 7, 'HM', 'Heard and Mc Donald Islands', 1, NULL, NULL),
	(96, 1, 'HN', 'Honduras', 1, NULL, NULL),
	(97, 4, 'HK', 'Hong Kong', 1, NULL, NULL),
	(98, 5, 'HU', 'Hungary', 1, NULL, NULL),
	(99, 5, 'IS', 'Iceland', 1, NULL, NULL),
	(100, 4, 'IN', 'India', 1, NULL, NULL),
	(101, 5, 'IM', 'Isle of Man', 1, NULL, NULL),
	(102, 7, 'ID', 'Indonesia', 1, NULL, NULL),
	(103, 9, 'IR', 'Iran', 1, NULL, NULL),
	(104, 4, 'IQ', 'Iraq', 1, NULL, NULL),
	(105, 5, 'IE', 'Ireland', 1, NULL, NULL),
	(106, 9, 'IL', 'Israel', 1, NULL, NULL),
	(107, 5, 'IT', 'Italy', 1, NULL, NULL),
	(108, 6, 'CI', 'Ivory Coast', 1, NULL, NULL),
	(109, 5, 'JE', 'Jersey', 1, NULL, NULL),
	(110, 6, 'JM', 'Jamaica', 1, NULL, NULL),
	(111, 4, 'JP', 'Japan', 1, NULL, NULL),
	(112, 4, 'JO', 'Jordan', 1, NULL, NULL),
	(113, 4, 'KZ', 'Kazakhstan', 1, NULL, NULL),
	(114, 6, 'KE', 'Kenya', 1, NULL, NULL),
	(115, 7, 'KI', 'Kiribati', 1, NULL, NULL),
	(116, 4, 'KP', 'Korea, Democratic People\'s Republic of', 1, NULL, NULL),
	(117, 4, 'KR', 'Korea, Republic of', 1, NULL, NULL),
	(118, 5, 'XK', 'Kosovo', 1, NULL, NULL),
	(119, 4, 'KW', 'Kuwait', 1, NULL, NULL),
	(120, 4, 'KG', 'Kyrgyzstan', 1, NULL, NULL),
	(121, 4, 'LA', 'Lao People\'s Democratic Republic', 1, NULL, NULL),
	(122, 5, 'LV', 'Latvia', 1, NULL, NULL),
	(123, 4, 'LB', 'Lebanon', 1, NULL, NULL),
	(124, 6, 'LS', 'Lesotho', 1, NULL, NULL),
	(125, 6, 'LR', 'Liberia', 1, NULL, NULL),
	(126, 6, 'LY', 'Libyan Arab Jamahiriya', 1, NULL, NULL),
	(127, 5, 'LI', 'Liechtenstein', 1, NULL, NULL),
	(128, 5, 'LT', 'Lithuania', 1, NULL, NULL),
	(129, 5, 'LU', 'Luxembourg', 1, NULL, NULL),
	(130, 4, 'MO', 'Macau', 1, NULL, NULL),
	(131, 5, 'MK', 'North Macedonia', 1, NULL, NULL),
	(132, 6, 'MG', 'Madagascar', 1, NULL, NULL),
	(133, 6, 'MW', 'Malawi', 1, NULL, NULL),
	(134, 4, 'MY', 'Malaysia', 1, NULL, NULL),
	(135, 4, 'MV', 'Maldives', 1, NULL, NULL),
	(136, 6, 'ML', 'Mali', 1, NULL, NULL),
	(137, 5, 'MT', 'Malta', 1, NULL, NULL),
	(138, 7, 'MH', 'Marshall Islands', 1, NULL, NULL),
	(139, 1, 'MQ', 'Martinique', 1, NULL, NULL),
	(140, 6, 'MR', 'Mauritania', 1, NULL, NULL),
	(141, 6, 'MU', 'Mauritius', 1, NULL, NULL),
	(142, 6, 'TY', 'Mayotte', 1, NULL, NULL),
	(143, 1, 'MX', 'Mexico', 1, NULL, NULL),
	(144, 7, 'FM', 'Micronesia, Federated States of', 1, NULL, NULL),
	(145, 5, 'MD', 'Moldova, Republic of', 1, NULL, NULL),
	(146, 5, 'MC', 'Monaco', 1, NULL, NULL),
	(147, 4, 'MN', 'Mongolia', 1, NULL, NULL),
	(148, 5, 'ME', 'Montenegro', 1, NULL, NULL),
	(149, 1, 'MS', 'Montserrat', 1, NULL, NULL),
	(150, 6, 'MA', 'Morocco', 1, NULL, NULL),
	(151, 6, 'MZ', 'Mozambique', 1, NULL, NULL),
	(152, 4, 'MM', 'Myanmar', 1, NULL, NULL),
	(153, 6, 'NA', 'Namibia', 1, NULL, NULL),
	(154, 7, 'NR', 'Nauru', 1, NULL, NULL),
	(155, 4, 'NP', 'Nepal', 1, NULL, NULL),
	(156, 5, 'NL', 'Netherlands', 1, NULL, NULL),
	(157, 5, 'AN', 'Netherlands Antilles', 1, NULL, NULL),
	(158, 7, 'NC', 'New Caledonia', 1, NULL, NULL),
	(159, 7, 'NZ', 'New Zealand', 1, NULL, NULL),
	(160, 4, 'NI', 'Nicaragua', 1, NULL, NULL),
	(161, 6, 'NE', 'Niger', 1, NULL, NULL),
	(162, 6, 'NG', 'Nigeria', 1, NULL, NULL),
	(163, 7, 'NU', 'Niue', 1, NULL, NULL),
	(164, 7, 'NF', 'Norfolk Island', 1, NULL, NULL),
	(165, 7, 'MP', 'Northern Mariana Islands', 1, NULL, NULL),
	(166, 3, 'NO', 'Norway', 1, NULL, NULL),
	(167, 4, 'OM', 'Oman', 1, NULL, NULL),
	(168, 4, 'PK', 'Pakistan', 1, NULL, NULL),
	(169, 7, 'PW', 'Palau', 1, NULL, NULL),
	(170, 4, 'PS', 'Palestine', 1, NULL, NULL),
	(171, 1, 'PA', 'Panama', 1, NULL, NULL),
	(172, 7, 'PG', 'Papua New Guinea', 1, NULL, NULL),
	(173, 2, 'PY', 'Paraguay', 1, NULL, NULL),
	(174, 2, 'PE', 'Peru', 1, NULL, NULL),
	(175, 4, 'PH', 'Philippines', 1, NULL, NULL),
	(176, 7, 'PN', 'Pitcairn', 1, NULL, NULL),
	(177, 5, 'PL', 'Poland', 1, NULL, NULL),
	(178, 5, 'PT', 'Portugal', 1, NULL, NULL),
	(179, 1, 'PR', 'Puerto Rico', 1, NULL, NULL),
	(180, 4, 'QA', 'Qatar', 1, NULL, NULL),
	(181, 6, 'RE', 'Reunion', 1, NULL, NULL),
	(182, 5, 'RO', 'Romania', 1, NULL, NULL),
	(183, 5, 'RU', 'Russian Federation', 1, NULL, NULL),
	(184, 6, 'RW', 'Rwanda', 1, NULL, NULL),
	(185, 1, 'KN', 'Saint Kitts and Nevis', 1, NULL, NULL),
	(186, 1, 'LC', 'Saint Lucia', 1, NULL, NULL),
	(187, 1, 'VC', 'Saint Vincent and the Grenadines', 1, NULL, NULL),
	(188, 7, 'WS', 'Samoa', 1, NULL, NULL),
	(189, 5, 'SM', 'San Marino', 1, NULL, NULL),
	(190, 6, 'ST', 'Sao Tome and Principe', 1, NULL, NULL),
	(191, 4, 'SA', 'Saudi Arabia', 1, NULL, NULL),
	(192, 6, 'SN', 'Senegal', 1, NULL, NULL),
	(193, 5, 'RS', 'Serbia', 1, NULL, NULL),
	(194, 6, 'SC', 'Seychelles', 1, NULL, NULL),
	(195, 6, 'SL', 'Sierra Leone', 1, NULL, NULL),
	(196, 4, 'SG', 'Singapore', 1, NULL, NULL),
	(197, 5, 'SK', 'Slovakia', 1, NULL, NULL),
	(198, 5, 'SI', 'Slovenia', 1, NULL, NULL),
	(199, 7, 'SB', 'Solomon Islands', 1, NULL, NULL),
	(200, 6, 'SO', 'Somalia', 1, NULL, NULL),
	(201, 6, 'ZA', 'South Africa', 1, NULL, NULL),
	(202, 2, 'GS', 'South Georgia South Sandwich Islands', 1, NULL, NULL),
	(203, 6, 'SS', 'South Sudan', 1, NULL, NULL),
	(204, 5, 'ES', 'Spain', 1, NULL, NULL),
	(205, 4, 'LK', 'Sri Lanka', 1, NULL, NULL),
	(206, 2, 'SH', 'St. Helena', 1, NULL, NULL),
	(207, 1, 'PM', 'St. Pierre and Miquelon', 1, NULL, NULL),
	(208, 6, 'SD', 'Sudan', 1, NULL, NULL),
	(209, 2, 'SR', 'Suriname', 1, NULL, NULL),
	(210, 5, 'SJ', 'Svalbard and Jan Mayen Islands', 1, NULL, NULL),
	(211, 6, 'SZ', 'Swaziland', 1, NULL, NULL),
	(212, 5, 'SE', 'Sweden', 1, NULL, NULL),
	(213, 5, 'CH', 'Switzerland', 1, NULL, NULL),
	(214, 4, 'SY', 'Syrian Arab Republic', 1, NULL, NULL),
	(215, 4, 'TW', 'Taiwan', 1, NULL, NULL),
	(216, 4, 'TJ', 'Tajikistan', 1, NULL, NULL),
	(217, 6, 'TZ', 'Tanzania, United Republic of', 1, NULL, NULL),
	(218, 4, 'TH', 'Thailand', 1, NULL, NULL),
	(219, 6, 'TG', 'Togo', 1, NULL, NULL),
	(220, 7, 'TK', 'Tokelau', 1, NULL, NULL),
	(221, 7, 'TO', 'Tonga', 1, NULL, NULL),
	(222, 2, 'TT', 'Trinidad and Tobago', 1, NULL, NULL),
	(223, 6, 'TN', 'Tunisia', 1, NULL, NULL),
	(224, 4, 'TR', 'Turkey', 1, NULL, NULL),
	(225, 4, 'TM', 'Turkmenistan', 1, NULL, NULL),
	(226, 1, 'TC', 'Turks and Caicos Islands', 1, NULL, NULL),
	(227, 7, 'TV', 'Tuvalu', 1, NULL, NULL),
	(228, 6, 'UG', 'Uganda', 1, NULL, NULL),
	(229, 5, 'UA', 'Ukraine', 1, NULL, NULL),
	(230, 4, 'AE', 'United Arab Emirates', 1, NULL, NULL),
	(231, 5, 'GB', 'United Kingdom', 1, 1, 'en'),
	(232, 1, 'US', 'United States', 1, NULL, NULL),
	(233, 1, 'UM', 'United States minor outlying islands', 1, NULL, NULL),
	(234, 2, 'UY', 'Uruguay', 1, NULL, NULL),
	(235, 4, 'UZ', 'Uzbekistan', 1, NULL, NULL),
	(236, 7, 'VU', 'Vanuatu', 1, NULL, NULL),
	(237, 5, 'VA', 'Vatican City State', 1, NULL, NULL),
	(238, 2, 'VE', 'Venezuela', 1, NULL, NULL),
	(239, 4, 'VN', 'Vietnam', 1, NULL, NULL),
	(240, 1, 'VG', 'Virgin Islands (British)', 1, NULL, NULL),
	(241, 1, 'VI', 'Virgin Islands (U.S.)', 1, NULL, NULL),
	(242, 7, 'WF', 'Wallis and Futuna Islands', 1, NULL, NULL),
	(243, 6, 'EH', 'Western Sahara', 1, NULL, NULL),
	(244, 4, 'YE', 'Yemen', 1, NULL, NULL),
	(245, 6, 'ZM', 'Zambia', 1, NULL, NULL),
	(246, 6, 'ZW', 'Zimbabwe', 1, NULL, NULL),
	(247, 6, 'AS', 'Afrique du Sud', 1, NULL, NULL),
	(248, 6, 'MA', 'Maghreb', 1, NULL, NULL),
	(249, 6, 'AS', 'Afrique du Sud', 1, NULL, NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
