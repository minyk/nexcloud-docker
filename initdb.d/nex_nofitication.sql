CREATE TABLE `nex_notification` (
	`idx` INT(11) NOT NULL AUTO_INCREMENT,
	`severity` ENUM('Critical','Warning') NOT NULL DEFAULT 'Critical' COMMENT 'Notification등급( Critical, Warning)' COLLATE 'utf8_general_ci',
	`target_system` VARCHAR(32) NULL DEFAULT NULL COMMENT 'Notification target ( \'Host\',\'Agent\',\'Task\',\'Framework\',\'Docker\' )' COLLATE 'utf8_general_ci',
	`target_ip` VARCHAR(32) NULL DEFAULT NULL COMMENT 'Target IP' COLLATE 'utf8_general_ci',
	`target` VARCHAR(124) NULL DEFAULT NULL COMMENT 'Target ( CPU, Memory, Disk, Netowrk, System Error..... )' COLLATE 'utf8_general_ci',
	`metric` VARCHAR(512) NULL DEFAULT NULL COMMENT 'Metrics' COLLATE 'utf8_general_ci',
	`condition` VARCHAR(512) NULL DEFAULT NULL COMMENT 'Condition' COLLATE 'utf8_general_ci',
	`id` VARCHAR(512) NULL DEFAULT NULL COMMENT 'Service/Task/Node/Framework의 Service ID or IP' COLLATE 'utf8_general_ci',
	`status` ENUM('S','F') NULL DEFAULT 'S' COMMENT 'Status (\'S\':Succeded, \'F\':Failed)' COLLATE 'utf8_general_ci',
	`start_time` TIMESTAMP NULL DEFAULT NULL COMMENT 'Start Time',
	`finish_time` TIMESTAMP NULL DEFAULT NULL COMMENT 'Finish Time',
	`contents` TEXT NOT NULL COMMENT 'notification contents' COLLATE 'utf8_general_ci',
	`memo` TEXT NULL COLLATE 'utf8_general_ci',
	`check_yn` CHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_general_ci',
	`regdt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`idx`),
	INDEX `severity` (`severity`),
	INDEX `target_system` (`target_system`),
	INDEX `target_ip` (`target_ip`),
	INDEX `id` (`id`),
	INDEX `status` (`status`),
	INDEX `start_time` (`start_time`),
	INDEX `finish_time` (`finish_time`),
	INDEX `regdt` (`regdt`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
