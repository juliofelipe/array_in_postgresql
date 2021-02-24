CREATE TABLE reajuste_test (
	id serial PRIMARY KEY,
	ano_reajuste VARCHAR (100),
	ano INTEGER [],
	mes INTEGER [],
	reajustes FLOAT []
);

INSERT INTO reajuste_test (ano_reajuste, ano, mes, reajustes)
VALUES('Ano 1', '{2018, 2018, 2018}','{9, 10, 11}','{8826.85, 18830.60, 8826.85 }'),
      ('Ano 2', '{2018, 2018, 2018}','{9, 10, 11}', '{15440.43, 32939.57, 15440.43 }');
     
     
select ano_reajuste, unnest(ano), unnest(mes), unnest(reajustes)
from reajuste_test rt 

--SOMA AS COLUNAS
select  ano[1], mes[1], SUM(reajustes[1])
from reajuste_test rt 
where mes[1] = 9
group by  ano[1], mes[1]


delete from reajuste_test 
