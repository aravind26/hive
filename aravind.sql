set myage=25;
select * from niit.customer where age >= ${hiveconf:myage};

