select name
from brand
where id = (
    select brand_id
    from model
    where performance = (
        select MAX(performance)
        from model))

//TODO

select name
from brand
where id =(select brand_id
			from model
			where performance  = (
				select MIN(performance)
				from model))

select model_name, type, performance
from model
where brand_id = (select id from brand where name = 'Audi')
and production_year < 2020

select count(*)
from model
where type = 'Sedan'

select *
from model
where production_year = (select min(production_year)
	from model where type = 'Sedan')
and type = 'Sedan'