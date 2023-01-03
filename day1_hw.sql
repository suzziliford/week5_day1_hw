-- Question 1. How many actors are there with the last name "Wahlberg'?
select count(*)
from actor
where last_name = 'Wahlberg';

'count' = 2

2	Nick	Wahlberg	2013-05-26 14:47:57.620
95	Daryl	Wahlberg	2013-05-26 14:47:57.620

-- Question 2. How many payments were made between $3.99 and $5.99?

select count(*)
from payment p 
where amount between 3.99 and 5.99

5,607

-- Question 3. Which films have exactly 7 copies? (search in inventory)

select count(*), film_id from inventory
group by film_id  
having count(*) = 7;

7	273
7	951
7	22
7	556
7	57
7	644
7	366
7	841
7	305
7	181
7	10
7	35
7	823
7	285
7	391
7	922
7	563
7	143
7	228
7	814
7	850
7	320
7	115
7	555
7	816
7	172
7	409
7	521
7	443
7	39
7	317
7	476
7	374
7	12
7	154
7	234
7	270
7	970
7	263
7	843
7	447
7	624
7	723
7	902
7	892
7	78
7	852
7	863
7	114
7	715
7	119
7	376
7	37
7	891
7	979
7	760
7	218
7	554
7	670
7	641
7	733
7	502
7	43
7	349
7	677
7	4
7	698
7	735
7	985
7	810
7	450
7	408
7	982
7	11
7	687
7	245
7	895
7	484
7	471
7	464
7	167
7	284
7	367
7	247
7	869
7	625
7	941
7	135
7	665
7	879
7	311
7	875
7	845
7	755
7	244
7	397
7	786
7	804
7	467
7	771
7	159
7	857
7	890
7	319
7	162
7	330
7	112
7	590
7	579
7	720
7	274
7	833
7	993
7	122
7	901
7	790

-- Question 4. How many customers have the first name 'Willie'?

select *
from customer
where first_name = 'Willie';

219	2	Willie	Howell	willie.howell@sakilacustomer.org	223	true	2006-02-14	2013-05-26 14:49:45.738	1
359	2	Willie	Markham	willie.markham@sakilacustomer.org	364	true	2006-02-14	2013-05-26 14:49:45.738	1

-- Question 5. What store employee (get the id) sold the most rentals (use the rental table)?


select count(staff_id) as value_occurrence
from rental r 
group by staff_id 
order by value_occurrence desc 
limit 1;


select staff_id, rental_id 
from rental;


select customer_id, sum(amount)
from payment p group by customer_id order by sum(amount) desc;



-- Question 6. How many unique district names are there?

select count(*)district
from address a;

603

-- Question 7. Which hilm has the most actors in it> (use film_actor table and get film_id)

select actor_id , film_id 
from film_actor fa
order by actor_id desc;

-- the first appearing on the list is...
actor_id 200
film_id 993

-- but 20 films have an equal top number of actors

200	993
200	958
200	945
200	912
200	879
200	714
200	544
200	538
200	537
200	474
200	465
200	462
200	419
200	346
200	149
200	121
200	116
200	80
200	49
200	5





--select max(actor_id)
--from film_actor fa;
--order by actor_id, film_id desc;

-- Question 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select count(*)
from customer c 
where last_name like '%es';

21.

-- Question 9. Within the film, table, how many rating categories are there? And what rating has the most movies total?

select count(*) rating
from film;

1000

select count (rating) as value_occurence
from film
group by rating
order by value_occurence desc
limit 1;

223