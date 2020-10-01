/* Structure for the `wp_users` table : */

CREATE TABLE `wp_users` (
  `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` VARCHAR(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` INTEGER(11) NOT NULL DEFAULT 0,
  `display_name` VARCHAR(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ID`),
  KEY `user_login_key` USING BTREE (`user_login`),
  KEY `user_nicename` USING BTREE (`user_nicename`),
  KEY `user_email` USING BTREE (`user_email`)
) ENGINE=InnoDB
AUTO_INCREMENT=2 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_users` table  (LIMIT 0,500) */

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
  (1,'farley','$P$BwxxBXnfPeRaIST/nDB9C/AkI6orJL1','farley','teste@teste.com.br','http://localhost:8080/plugin-wordpress/wordpress','2020-09-23 15:52:01','',0,'farley');
COMMIT;

