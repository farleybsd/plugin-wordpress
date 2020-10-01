/* Structure for the `wp_term_taxonomy` table : */

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` VARCHAR(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` LONGTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` BIGINT(20) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` USING BTREE (`term_id`, `taxonomy`),
  KEY `taxonomy` USING BTREE (`taxonomy`)
) ENGINE=InnoDB
AUTO_INCREMENT=3 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_term_taxonomy` table  (LIMIT 0,500) */

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
  (1,1,'category','',0,1),
  (2,2,'nav_menu','',0,2);
COMMIT;

