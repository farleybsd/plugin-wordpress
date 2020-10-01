/* Structure for the `wp_comments` table : */

CREATE TABLE `wp_comments` (
  `comment_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` TINYTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` INTEGER(11) NOT NULL DEFAULT 0,
  `comment_approved` VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`comment_ID`),
  KEY `comment_post_ID` USING BTREE (`comment_post_ID`),
  KEY `comment_approved_date_gmt` USING BTREE (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` USING BTREE (`comment_date_gmt`),
  KEY `comment_parent` USING BTREE (`comment_parent`),
  KEY `comment_author_email` USING BTREE (`comment_author_email`(10))
) ENGINE=InnoDB
AUTO_INCREMENT=2 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'
;

/* Data for the `wp_comments` table  (LIMIT 0,500) */

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
  (1,1,'Um comentarista do WordPress','wapuu@wordpress.example','https://wordpress.org/','','2020-09-23 12:52:01','2020-09-23 15:52:01','Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
COMMIT;

