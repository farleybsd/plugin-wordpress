/* Structure for the `wp_terms` table : */

CREATE TABLE `wp_terms` (
  `term_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` BIGINT(10) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`term_id`),
  KEY `slug` USING BTREE (`slug`(191)),
  KEY `name` USING BTREE (`name`(191))
) ENGINE=InnoDB
AUTO_INCREMENT=3 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_terms` table  (LIMIT 0,500) */

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
  (1,'Sem categoria','sem-categoria',0),
  (2,'Menu Principal','menu-principal',0);
COMMIT;

