CREATE TABLE `nex_node` (
	`node_name` VARCHAR(64) NOT NULL COMMENT 'Node name',
	`node_ip` VARCHAR(32) NOT NULL COMMENT 'Node IP',
	`node_id` VARCHAR(64) NOT NULL COMMENT 'Node ID',
	`role` VARCHAR(64) NOT NULL COMMENT 'role(agent, master)',
	`parent` VARCHAR(64) NULL DEFAULT NULL COMMENT 'parent host information',
	`status` VARCHAR(2) NOT NULL COMMENT 'Node state',
	`regdt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Node registration date',
	UNIQUE INDEX `node_ip` (`node_ip`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
