CREATE TABLE brand(
	id int GENERATED ALWAYS AS IDENTITY,
	name text NOT NULL,
	founded int NOT NULL,
	PRIMARY KEY (id)
	);

CREATE TABLE model(
id int GENERATED ALWAYS AS IDENTITY,
production_year int NOT NULL,
model_name text NOT NULL,
type text NOT NULL,
brand_id int NOT NULL,
performance int NOT NULL
);

ALTER TABLE public.model ADD CONSTRAINT model_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);

INSERT INTO brand (name,founded) VALUES
     ('Audi',1932),
	 ('Toyota',1936),
	 ('BMW',1916),
	 ('Mercedes-Benz',1926),
	 ('Honda',1948);


INSERT INTO public.model (production_year,model_name,"type",brand_id,performance) VALUES
	 (2004,'A5','Coupe',1,336),
	 (2010,'Highlander','Coupe',2,492),
	 (2013,'X5','SUV',3,237),
	 (2005,'GLE','SUV',4,236),
	 (2012,'5 Series','Sedan',3,175),
	 (1999,'X3','SUV',3,282),
	 (1998,'4Runner','Coupe',2,316),
	 (2024,'Tacoma','Coupe',2,406),
	 (2015,'Yaris','Coupe',2,254),
	 (1999,'Q3','SUV',1,196);
INSERT INTO public.model (production_year,model_name,"type",brand_id,performance) VALUES
	 (2024,'Accord','Coupe',5,236),
	 (2013,'A1','Hatchback',5,131),
	 (1997,'Odyssey','Coupe',5,437),
	 (2010,'CR-V','Coupe',5,257),
	 (2024,'Passport','Coupe',5,424),
	 (2006,'GLS','SUV',4,338),
	 (2003,'3 Series','Sedan',3,191),
	 (2020,'Tundra','Coupe',5,246),
	 (2005,'2 Series','Coupe',3,203),
	 (2004,'GLC','SUV',4,250);
INSERT INTO public.model (production_year,model_name,"type",brand_id,performance) VALUES
	 (2002,'Corolla','Coupe',5,373),
	 (2023,'Fit','Coupe',5,221),
	 (2003,'1 Series','Hatchback',3,121),
	 (2018,'G-Class','Sedan',4,257),
	 (2007,'Prius','Coupe',2,286),
	 (1998,'Sienna','Coupe',2,467);



