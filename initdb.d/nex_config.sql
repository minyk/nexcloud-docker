CREATE TABLE `nex_config` (
	`code` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',
	`value` TEXT NOT NULL COLLATE 'utf8_general_ci'
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


INSERT INTO `nex_config` (`code`, `value`) VALUES
('influxdb', 'http://influxdb:8086'),
('kafka_host', 'kafka'),
('kafka_mesos_group', 'workflow_consumer'),
('kafka_notification_group', 'assurance_consumer'),
('kafka_port', '9092'),
('kafka_zookeeper', 'zookeeper'),
('mesos_topic', 'data_collector'),
('mesos_endpoint', 'http://leader.mesos'),
('mesos_influxdb', 'nexclipper'),
('mesos_snapshot_topic', 'data_snapshot'),
('notification_topic', 'data_assurance'),
('redis_host', 'redis'),
('redis_port', '6379'),
('scretKey', 'TjRihTXJiMQMvxtOGcLYDqIXgaQJDuLYWYqyCEaxrsOuKULKqKjvgltroQrpGkIP'),
('uid', 'admin@nexcloud.co.k'),
('kafka_snapshot_group', 'snapshot_consumer');
