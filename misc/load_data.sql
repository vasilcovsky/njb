load data local infile 'agency.txt' into table agency fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'calendar_dates.txt' into table calendar_dates fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'routes.txt' into table routes fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'shapes.txt' into table shapes fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'stops.txt' into table stops fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'trips.txt' into table trips fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;

load data local infile 'stop_times.txt' into table stop_times fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines;


load data local infile 'calendar_dates.txt' into table calendar_dates fields terminated by ',' optionally enclosed by '"' escaped by ''  ignore 1 lines (service_id, @dt, exception_type) set dt = str_to_date(@dt, '%Y%m%d');

