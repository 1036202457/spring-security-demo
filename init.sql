CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'userId',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `userface` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

CREATE TABLE `privilege` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) DEFAULT NULL,
  `nameZh` VARCHAR(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=INNODB ;

CREATE TABLE `user_privilege` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `userId` INT(11) DEFAULT NULL,
  `privilegeId` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privilege_id` (`privilegeId`),
  KEY `user_privilege_ibfk_1` (`userId`),
  CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilegeId`) REFERENCES `privilege` (`id`)
) ENGINE=INNODB;


