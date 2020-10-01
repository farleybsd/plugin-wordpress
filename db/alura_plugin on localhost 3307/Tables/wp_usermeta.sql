/* Structure for the `wp_usermeta` table : */

CREATE TABLE `wp_usermeta` (
  `umeta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` LONGTEXT COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY USING BTREE (`umeta_id`),
  KEY `user_id` USING BTREE (`user_id`),
  KEY `meta_key` USING BTREE (`meta_key`(191))
) ENGINE=InnoDB
AUTO_INCREMENT=20 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_usermeta` table  (LIMIT 0,500) */

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
  (1,1,'nickname','farley'),
  (2,1,'first_name',''),
  (3,1,'last_name',''),
  (4,1,'description',''),
  (5,1,'rich_editing','true'),
  (6,1,'syntax_highlighting','true'),
  (7,1,'comment_shortcuts','false'),
  (8,1,'admin_color','fresh'),
  (9,1,'use_ssl','0'),
  (10,1,'show_admin_bar_front','true'),
  (11,1,'locale',''),
  (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
  (13,1,'wp_user_level','10'),
  (14,1,'dismissed_wp_pointers',''),
  (15,1,'show_welcome_panel','1'),
  (16,1,'session_tokens','a:1:{s:64:\"899f8c260bcfcf1daeaeb241744bc96d73be83e997b500dedf1c8181fcc77714\";a:4:{s:10:\"expiration\";i:1601479659;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601306859;}}'),
  (17,1,'wp_dashboard_quick_press_last_post_id','4'),
  (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
  (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
COMMIT;

