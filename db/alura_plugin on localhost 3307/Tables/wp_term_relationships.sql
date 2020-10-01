/* Structure for the `wp_term_relationships` table : */

CREATE TABLE `wp_term_relationships` (
  `object_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` INTEGER(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` USING BTREE (`term_taxonomy_id`)
) ENGINE=InnoDB
ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_term_relationships` table  (LIMIT 0,500) */

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
  (1,1,0),
  (21,2,0),
  (23,2,0);
COMMIT;

