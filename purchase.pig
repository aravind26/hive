A = load '/home/hduser/purchase.txt' using PigStorage(',') as (prod:int, pqty:int);
B = load '/home/hduser/sales.txt' using PigStorage(',') as (prod:int, sqty:int);

--dump A;
--dump B;

c = cogroup A by $0, B by $0;

dump c;

