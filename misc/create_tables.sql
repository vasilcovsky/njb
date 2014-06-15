CREATE TABLE agency (
	agency_id VARCHAR(5) NULL,
	agency_name VARCHAR(50) NULL,
	agency_url VARCHAR(50) NULL,
	agency_timezone VARCHAR(50) NULL,
	agency_lang VARCHAR(50) NULL,
	agency_phone VARCHAR(50) NULL,
	PRIMARY KEY(agency_id)
);

CREATE TABLE routes (
	route_id integer not null auto_increment,
	agency_id VARCHAR(5) NULL,
	route_short_name VARCHAR(50) NULL,
	route_long_name VARCHAR(50) NULL,
	route_type VARCHAR(50) NULL,
	route_url VARCHAR(50) NULL,
	route_color VARCHAR(50) NULL,
	PRIMARY KEY(route_id)
);

CREATE TABLE shapes (
	shape_id integer not null auto_increment,
	shape_pt_lat DECIMAL(9,6) not null,
	shape_pt_lon DECIMAL(9,6) not null,
	shape_pt_sequence integer not null,
	shape_dist_traveled DECIMAL(9,6) not null,
	PRIMARY KEY(share_id)
);

CREATE TABLE calendar_dates(
	service_id integer not null,
	dt date not null,
	exception_type smallint not null,
	key(service_id)
);

CREATE TABLE stop_times (
	trip_id integer not null,
	arrival_time char(8) not null,
	departure_time char(8) not null,
	stop_id integer not null,
	stop_sequence integer not null,
	pickup_type integer not null,
	drop_off_type integer not null,
	shape_dist_traveled DECIMAL(9,6) not null
);


CREATE TABLE stops (
	stop_id integer not null,
	stop_code integer not null,
	stop_name VARCHAR(200) not null,
	stop_desc VARCHAR(200) not null,
	stop_lat DECIMAL(9,6) not null,
	stop_lon DECIMAL(9,6) not null,
	zone_id integer not null,
	PRIMARY KEY(stop_id)
);


CREATE TABLE trips (
	route_id integer not null,
	service_id integer not null,
	trip_id integer not null,
	trip_headsign VARCHAR(50) NULL,
	direction_id integer not null,
	block_id VARCHAR(50) NULL,
	shape_id integer not null
);