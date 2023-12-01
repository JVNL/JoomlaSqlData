# Localise data for Full Dutch Joomla! Pack
# Please ensure that the used ID in queries are matching those in joomla.sql
#
# If merged with joomla.sql/joomla_backward.sql or sample_data.sql,
# put at the bottom of joomla.sql/joomla_backwards.sql, and on top of the sample_data.sql
#
# -------------------------------------------------------

--
-- Localise data for table `#__categories`
--

-- Translate title etc. on all Uncategorised categories to suit your language
UPDATE `#__categories` SET `path` = 'ongecategoriseerd', `title` = 'Ongecategoriseerd', `alias` = 'ongecategoriseerd' WHERE `title` = 'Uncategorised';

--
-- Localise data for table `#__extensions`
--

-- Set default core language to your language, for both admin and site
UPDATE `#__extensions` SET `params` = '{"administrator":"nl-NL","site":"nl-NL"}' WHERE `name` = 'com_languages';

-- Add your language packs data
-- Note! Remember to add the Manifest files to the right Manifests folder (administrator/manifests/..)
INSERT INTO `#__extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(803, 805, 'Nederlandsnl-NL', 'language', 'nl-NL', '', 0, 1, 0, 0, '{\"name\":\"Nederlands (nl-NL)\",\"type\":\"language\",\"creationDate\":\"DATUM\",\"author\":\"Dutch Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Dutch Translation Team en Open Source Matters. All rights reserved.\",\"authorEmail\":\"taal@joomlacommunity.nl\",\"authorUrl\":\"https:\\/\\/joomlacommunity.nl\",\"version\":\"VERSIE.1\",\"description\":\"Nederlands taalbestand Joomla! VERSIE (site)\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 805, 'Nederlandsnl-NL', 'language', 'nl-NL', '', 1, 1, 0, 0, '{\"name\":\"Nederlands (nl-NL)\",\"type\":\"language\",\"creationDate\":\"DATUM\",\"author\":\"Dutch Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Dutch Translation Team en Open Source Matters. All rights reserved.\",\"authorEmail\":\"taal@joomlacommunity.nl\",\"authorUrl\":\"https:\\/\\/joomlacommunity.nl\",\"version\":\"VERSIE.1\",\"description\":\"Nederlands taalbestand Joomla! VERSIE (beheergedeelte)\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', 0, '0000-00-00 00:00:00', 0, 0),
(805, 0, 'Nederlands (nl-NL) taalpakket', 'package', 'pkg_nl-NL', '', 0, 1, 1, 0, '{\"name\":\"Nederlands (nl-NL) taalpakket\",\"type\":\"package\",\"creationDate\":\"DATUM\",\"author\":\"Dutch Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2019 Dutch Translation Team en Open Source Matters. All rights reserved.\",\"authorEmail\":\"taal@joomlacommunity.nl\",\"authorUrl\":\"https:\\/\\/joomlacommunity.nl\",\"version\":\"VERSIE.1\",\"description\":\"Nederlands taalpakket\",\"group\":\"\",\"filename\":\"pkg_nl-NL\"}', '{}', '', 0, '0000-00-00 00:00:00', 0, 0);
--
-- Localise data for table `#__finder_terms_common`
--

-- Add Common Terms for your language - OPTIONAL
-- Look at joomla.sql for more examples on terms
REPLACE INTO `#__finder_terms_common` (`term`, `language`) VALUES
('een', 'nl'),
('de', 'nl'),
('het', 'nl'),
('over', 'nl'),
('na', 'nl'),		
('alle', 'nl'),
('is', 'nl'),
('zijn', 'nl'),
('en', 'nl'),
('elk', 'nl'),
('elke', 'nl'),
('als', 'nl'),
('op', 'nl'),
('maar', 'nl'),
('door', 'nl'),
('voor', 'nl'),
('van', 'nl'),
('ga', 'nl'),
('hoe', 'nl'),
('of', 'nl'),
('in', 'nl'),
('mij', 'nl'),
('meer', 'nl'),
('meest', 'nl'),
('moet', 'nl'),
('mijn', 'nl'),
('nieuw', 'nl'),
('nee', 'nl'),
('geen', 'nl'),
('niet', 'nl'),
('niets', 'nl'),
('uit', 'nl'),
('vaak', 'nl'),
('oud', 'nl'),
('aan', 'nl'),
('ons', 'nl'),
('eens', 'nl'),
('alleen', 'nl'),
('ander', 'nl'),
('onze', 'nl'),
('over', 'nl'),
('pagina', 'nl'),
('zij', 'nl'),
('zou', 'nl'),
('klein', 'nl'),
('zo', 'nl'),
('dus', 'nl'),
('soms', 'nl'),
('enige', 'nl'),
('dank', 'nl'),
('dat', 'nl'),
('hun', 'nl'),
('dan', 'nl'),
('er', 'nl'),
('deze', 'nl'),
('dit', 'nl'),
('die', 'nl'),
('dat', 'nl'),
('deze', 'nl'),
('tijd', 'nl'),
('keer', 'nl'),
('tot', 'nl'),
('ook', 'nl'),
('waar', 'nl'),
('onder', 'nl'),
('gebruik', 'nl'),
('gebruiker', 'nl'),
('gebruikers', 'nl'),
('versie', 'nl'),
('erg', 'nl'),
('via', 'nl'),
('want', 'nl'),
('was', 'nl'),
('weg', 'nl'),
('wil', 'nl'),
('wat', 'nl'),
('wanneer', 'nl'),
('omdat', 'nl'),
('waarom', 'nl'),
('welke', 'nl'),
('wie', 'nl'),
('wiens', 'nl'),
('zal', 'nl'),
('met', 'nl'),
('binnen', 'nl'),
('zonder', 'nl'),
('zou', 'nl'),
('ja', 'nl'),
('nog', 'nl'),
('jij', 'nl'),
('jou', 'nl'),
('jouw', 'nl');


--
-- Localise data for table `#__languages`
--

-- Add your Content Language - OPTIONAL
-- Really only needed for Multilingual sites, but it does no harm to add it
-- You can also truncate the table first, and insert your content language with lang_id 1 if prefered
INSERT INTO `#__languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(2, 60, 'nl-NL', 'Nederlands (nl-NL)', 'Nederlands (Dutch)', 'nl', 'nl_nl', '', '', '', '', 0, 1, 1);

--
-- Localise data for table `#__menu`
--


--
-- Localise data for table `#__menu_types`
--

-- Translate title etc. on the Main Menu to suit your language
UPDATE `#__menu_types` SET `menutype` = 'mainmenu', `title` = 'Hoofdmenu', `description` = 'Het hoofdmenu van de website' WHERE `id` = 1;

--
-- Localise data for table `#__modules`
--

-- Translate title etc. on the Modules to suit your language
UPDATE `#__modules` SET `title` = 'Hoofdmenu' WHERE `id` = 1;
UPDATE `#__modules` SET `title` = 'Inloggen' WHERE `id` = 2;
UPDATE `#__modules` SET `title` = 'Populaire artikelen' WHERE `id` = 3;
UPDATE `#__modules` SET `title` = 'Recent toegevoegde artikelen' WHERE `id` = 4;
UPDATE `#__modules` SET `title` = 'Werkbalk' WHERE `id` = 8;
UPDATE `#__modules` SET `title` = 'Snelkoppelingen' WHERE `id` = 9;
UPDATE `#__modules` SET `title` = 'Ingelogde gebruikers' WHERE `id` = 10;
UPDATE `#__modules` SET `title` = 'Admin menu' WHERE `id` = 12;
UPDATE `#__modules` SET `title` = 'Admin submenu' WHERE `id` = 13;
UPDATE `#__modules` SET `title` = 'Gebruikersstatus' WHERE `id` = 14;
UPDATE `#__modules` SET `title` = 'Titel' WHERE `id` = 15;
UPDATE `#__modules` SET `title` = 'Inlogformulier' WHERE `id` = 16;
UPDATE `#__modules` SET `title` = 'Kruimelpad', `params` = REPLACE(`params`, '"homeText":"Home"', '"homeText":"Home"') WHERE `id` = 17;
UPDATE `#__modules` SET `title` = 'Meertalige status' WHERE `id` = 79;
UPDATE `#__modules` SET `title` = 'Joomla versie' WHERE `id` = 86;
UPDATE `#__modules` SET `title` = 'Voorbeelddata' WHERE `id` = 87;
UPDATE `#__modules` SET `title` = 'Laatste acties' WHERE `id` = 88;


--
-- Localise data for table `#__update_sites`
--

-- Localise data for table `#__usergroups`
--

-- Translate title on the User Groups to suit your language
UPDATE `#__usergroups` SET `title` = 'Publiek' WHERE `id` = 1;
UPDATE `#__usergroups` SET `title` = 'Geregistreerd' WHERE `id` = 2;
UPDATE `#__usergroups` SET `title` = 'Auteur' WHERE `id` = 3;
UPDATE `#__usergroups` SET `title` = 'Redacteur' WHERE `id` = 4;
UPDATE `#__usergroups` SET `title` = 'Hoofdredacteur' WHERE `id` = 5;
UPDATE `#__usergroups` SET `title` = 'Beheerder' WHERE `id` = 6;
UPDATE `#__usergroups` SET `title` = 'Administrator' WHERE `id` = 7;
UPDATE `#__usergroups` SET `title` = 'Super gebruikers' WHERE `id` = 8;
UPDATE `#__usergroups` SET `title` = 'Gast' WHERE `id` = 9;
--
-- Localise data for table `#__viewlevels`
--

-- Translate title on the Viewing Access Levels to suit your language
UPDATE `#__viewlevels` SET `title` = 'Publiek' WHERE `id` = 1;
UPDATE `#__viewlevels` SET `title` = 'Geregistreerd' WHERE `id` = 2;
UPDATE `#__viewlevels` SET `title` = 'Speciaal' WHERE `id` = 3;
UPDATE `#__viewlevels` SET `title` = 'Gast' WHERE `id` = 5;
UPDATE `#__viewlevels` SET `title` = 'Super gebruikers' WHERE `id` = 6;
