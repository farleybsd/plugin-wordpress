/* Structure for the `wp_links` table : */

CREATE TABLE `wp_links` (
  `link_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` VARCHAR(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` BIGINT(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` INTEGER(11) NOT NULL DEFAULT 0,
  `link_updated` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` MEDIUMTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`link_id`),
  KEY `link_visible` USING BTREE (`link_visible`)
) ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

