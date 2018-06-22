data= load '/home/hduser/Downloads/2000.txt' using PigStorage (',') as (id:int, name:chararray, jan:double, feb:double, mar:double, apr:double, may:double, jun:double, jul:double, aug:double, sep:double, oct:double, nov:double, dec:double);

--dump data;

data1= load '/home/hduser/Downloads/2001.txt' using PigStorage (',') as (id:int, name:chararray, jan:double, feb:double, mar:double, apr:double, may:double, jun:double, jul:double, aug:double, sep:double, oct:double, nov:double, dec:double);

--dump data1;

data2= load '/home/hduser/Downloads/2002.txt' using PigStorage (',') as (id:int, name:chararray, jan:double, feb:double, mar:double, apr:double, may:double, jun:double, jul:double, aug:double, sep:double, oct:double, nov:double, dec:double);

--dump data2;

--join all the 3 bags

--joined = join data by $0, data1 by $0, data2 by $0;

--dump joined;

--groupall = group data all;

--dump groupall;

--filter_data = filter data by $1, data1 by $1, data2 by $1;

--dump filter_data;

newdata = foreach data generate id, name, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13);

newdata1 = foreach data1 generate id, name, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13);

newdata2 = foreach data2 generate id, name, ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13);
dump newdata;

