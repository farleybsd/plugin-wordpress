/* Structure for the `wp_termmeta` table : */

CREATE TABLE `wp_termmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` LONGTEXT COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY USING BTREE (`meta_id`),
  KEY `term_id` USING BTREE (`term_id`),
  KEY `meta_key` USING BTREE (`meta_key`(191))
) ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

