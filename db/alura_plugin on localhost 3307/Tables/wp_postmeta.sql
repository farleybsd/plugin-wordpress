/* Structure for the `wp_postmeta` table : */

CREATE TABLE `wp_postmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` LONGTEXT COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY USING BTREE (`meta_id`),
  KEY `post_id` USING BTREE (`post_id`),
  KEY `meta_key` USING BTREE (`meta_key`(191))
) ENGINE=InnoDB
AUTO_INCREMENT=33 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_postmeta` table  (LIMIT 0,500) */

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
  (1,2,'_wp_page_template','default'),
  (2,3,'_wp_page_template','default'),
  (3,5,'_wp_trash_meta_status','publish'),
  (4,5,'_wp_trash_meta_time','1600876472'),
  (5,6,'_edit_lock','1601382896:1'),
  (6,21,'_menu_item_type','custom'),
  (7,21,'_menu_item_menu_item_parent','0'),
  (8,21,'_menu_item_object_id','21'),
  (9,21,'_menu_item_object','custom'),
  (10,21,'_menu_item_target',''),
  (11,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
  (12,21,'_menu_item_xfn',''),
  (13,21,'_menu_item_url','http://localhost:8080/plugin-wordpress/wordpress/'),
  (15,22,'_menu_item_type','post_type'),
  (16,22,'_menu_item_menu_item_parent','0'),
  (17,22,'_menu_item_object_id','2'),
  (18,22,'_menu_item_object','page'),
  (19,22,'_menu_item_target',''),
  (20,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
  (21,22,'_menu_item_xfn',''),
  (22,22,'_menu_item_url',''),
  (23,22,'_menu_item_orphaned','1601376785'),
  (24,23,'_menu_item_type','post_type'),
  (25,23,'_menu_item_menu_item_parent','0'),
  (26,23,'_menu_item_object_id','6'),
  (27,23,'_menu_item_object','page'),
  (28,23,'_menu_item_target',''),
  (29,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
  (30,23,'_menu_item_xfn',''),
  (31,23,'_menu_item_url','');
COMMIT;

