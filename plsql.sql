SET SERVEROUTPUT ON;

-- ex 1.1
BEGIN
    DBMS_OUTPUT.PUT_LINE('É preciso treinar para aprender');
END;



--ex 1.6
ACCEPT in_a NUMBER PROMPT 'Digite o primeiro valor';
ACCEPT in_x NUMBER PROMPT 'Digite o peso do primeiro valor';
ACCEPT in_b NUMBER PROMPT 'Digite o segundo valor';
ACCEPT in_y NUMBER PROMPT 'Digite o peso do segundo valor';
ACCEPT in_c NUMBER PROMPT 'Digite o terceiro valor';
ACCEPT in_z NUMBER PROMPT 'Digite o peso do terceiro valor';

DECLARE
    mediaPonderada NUMBER;
    
BEGIN
    mediaPonderada := ((&in_x*&in_a)+(&in_y*&in_b)+(&in_z*&in_c))/(&in_x+&in_y+&in_z);  
    dbms_output.put_line(ROUND(mediaPonderada,2));   
END;



-- ex 1.7
ACCEPT in_a NUMBER PROMPT 'Digite um numero';

BEGIN
    dbms_output.put_line('Anterior: '||( &in_a - 1));
    dbms_output.put_line('Posterior: '||( &in_a + 1));  
END;



-- ex 1.8
ACCEPT in_nome NUMBER PROMPT 'Digite seu nome';
ACCEPT in_telefone NUMBER PROMPT 'Digite seu telefone';
ACCEPT in_endereco NUMBER PROMPT 'Digite seu endereço de usuário';

BEGIN
    dbms_output.put_line('&in_nome');
    dbms_output.put_line('&in_telefone');
    dbms_output.put_line('&in_endereco');
END;



-- ex 1.9
ACCEPT in_a NUMBER PROMPT 'Digite o dividendo';
ACCEPT in_x NUMBER PROMPT 'Digite o divisor';

BEGIN
    dbms_output.put_line('Dividendo: '|| &in_a);
    dbms_output.put_line('Divisor: '|| &in_x);
    dbms_output.put_line('Quociente: '|| &in_a / &in_x);
    dbms_output.put_line('Resto: '||MOD(&in_a, &in_x));
END;



--ex 1.10
ACCEPT in_salario NUMBER PROMPT 'Salario R$: ';

BEGIN
    dbms_output.put_line('Salário++ R$: '||(&in_salario * 1/100+ &in_salario));
END;


-- ex1.11
ACCEPT in_a  NUMBER PROMPT 'Salario R$: ';
ACCEPT in_b NUMBER PROMPT 'Aumento de %: ';

DECLARE
  a NUMBER;
  b NUMBER;
BEGIN
  a := &in_a ;
  b := &in_b;
  dbms_output.put_line('Salário++ R$: '||(a * b/100+ a));
END;



--ex 1.12
ACCEPT in_b NUMBER PROMPT 'Base: ';
ACCEPT in_a NUMBER PROMPT 'Altura: ';

DECLARE
    base NUMBER;
    altura NUMBER;
    diagonal NUMBER;
    area NUMBER;
    
BEGIN
    base := &in_b;
    altura := &in_a;
    diagonal := SQRT((base*base)+SQRT(altura));
    area := (base*altura)/2;
    dbms_output.put_line('Diagonal: '||ROUND(diagonal,2));
    dbms_output.put_line('Area: '||area);
END;



--ex 1.13
ACCEPT in_nome  CHAR PROMPT 'Digite um nome';

BEGIN
     dbms_output.put_line(SUBSTR('&in_nome',1,1));
     dbms_output.put_line(SUBSTR('&in_nome',-1,1)); 
     dbms_output.put_line(SUBSTR('&in_nome',1,3)); 
     dbms_output.put_line(SUBSTR('&in_nome',2,LENGTH('&in_nome')));
     dbms_output.put_line(SUBSTR('&in_nome',1,LENGTH('&in_nome')-2)); 
END;



-- ex 1.14
ACCEPT in_b NUMBER PROMPT 'Base: ';
ACCEPT in_a NUMBER PROMPT 'Altura: ';

DECLARE
    base NUMBER;
    altura NUMBER;
    area NUMBER;
    
BEGIN
    base := &in_b;
    altura := &in_a;
    area := (base*altura)/2;
    dbms_output.put_line('Area: '||area);
END;



--ex 1.15
ACCEPT in_b NUMBER PROMPT 'Base: ';
ACCEPT in_a NUMBER PROMPT 'Altura: ';

DECLARE
    base NUMBER;
    altura NUMBER;
    diagonal NUMBER;
    
BEGIN
    base : =&in_b;
    altura := &in_a;
    diagonal := SQRT((base*base)+SQRT(altura));
    dbms_output.put_line('Hipotenusa: '||ROUND(diagonal,2));
END;



-- ex 1.16
ACCEPT in_a  NUMBER PROMPT 'Preço R$: ';

DECLARE
  a NUMBER;
  
BEGIN
  a:= &in_a ;
  dbms_output.put_line('Preço-- : '||(a - (a * 9/100)));
END;



-- ex 1.17
ACCEPT in_a  NUMBER PROMPT 'Temperatura em ºC: ';

DECLARE
  a NUMBER;
  
BEGIN
  a:= &in_a ;
  dbms_output.put_line('Temperatura em Fahrenheit: °F '||(9*a+160)/5);
END;


--ex 1.18
ACCEPT in_a  NUMBER PROMPT 'Angulo em graus: ';

DECLARE
    a FLOAT;
    seno FLOAT;
    cosseno FLOAT;
    tangente FLOAT;
    cossecante FLOAT;
    cotangente FLOAT;
    secante FLOAT;
    pi FLOAT;
  
BEGIN
    a:= &in_a ;
    pi := 3.14159;
    seno := SIN(a);
    cosseno := COS(a);
    tangente := TAN(a);
    cossecante := 1/seno;
    cotangente := 1/tangente;
    secante := 1/cosseno;
    dbms_output.put_line('Seno: ' || ROUND(pi*seno/180,3));
    dbms_output.put_line('Cosseno: ' || ROUND(pi*cosseno/180,3));
    dbms_output.put_line('Tangente: ' || ROUND(pi*tangente/180,3));
    dbms_output.put_line('Cossecante: ' || ROUND(pi*cossecante/180,3));
    dbms_output.put_line('Cotangente: ' || ROUND(pi*cotangente/180,3));
    dbms_output.put_line('Secante: ' || ROUND(pi*secante/180,3));
 
END;



--ex 1.19
ACCEPT in_a  NUMBER PROMPT 'Digite numero a converter para Log 10: ';

DECLARE
  a NUMBER;
  
BEGIN
  a := &in_a ;
  dbms_output.put_line('Resultado: ' || LOG(a,10));
END;



-- ex 1.20
ACCEPT in_a  NUMBER PROMPT 'Digite numero para calculo de log: ';
ACCEPT in_b  NUMBER PROMPT 'Digite a base do log: ';
DECLARE
  a NUMBER;
  b NUMBER;
  
BEGIN
  a := &in_a ;
  b := &in_b;

  dbms_output.put_line('Resultado: '||LOG(a,b));
END;



--ex 2.3
ACCEPT in_n NUMBER PROMPT 'Inserir número: ';

BEGIN
    IF ( MOD(&in_n,3) = 0 ) THEN
        dbms_output.put_line('Este número é múltiplo de 3');
    ELSE
        dbms_output.put_line('Este número não é múltiplo 3');
    END IF;
END;



-- ex 2.4
ACCEPT in_n NUMBER PROMPT 'Inserir número: ';

BEGIN
    IF ( MOD(&in_n,3)=0 AND MOD(&in_n,7)=0 ) THEN
        dbms_output.put_line('Número é múltiplo de 3 e 7');
    ELSE
        dbms_output.put_line('Número não é múltiplo ');
    END IF;
END;



-- ex 2.5
ACCEPT in_sal NUMBER PROMPT 'Salário : ';
ACCEPT in_emp NUMBER PROMPT 'Empréstimo: '

BEGIN
    IF ( &in_emp > &in_sal*0.3 ) THEN
        dbms_output.put_line('NEGADO');
    ELSE
        dbms_output.put_line('APROVADO');
    END IF;
END;



-- ex 2.6
ACCEPT sigla CHAR PROMPT 'Informe sigla: ';

DECLARE
    aux CHAR(2);
    
BEGIN
    aux := UPPER (SUBSTR('&sigla', LENGTH('&sigla')-1, 2));
     dbms_output.put_line(
        CASE
            WHEN aux='SP' OR aux='sp'
                THEN '&sigla' || ' é Paulista'
            WHEN aux = 'RJ' OR aux='rj'
                THEN '&sigla' || ' é Carioca'
             WHEN aux = 'MG' OR aux='mg'
                THEN '&sigla' || ' é  Mineiro'  
            ELSE
                '&sigla' || ' é de outro estado'
        END
     );
END;



-- ex 2.7
-- o sqldeveloper parou de aceitar variaveis declaradas? Occorreu acho que um bug, pois mostrava todo o codigo no out put mais o resultado?



-- ex 2.8
-- ex 2.9
-- ex 2.10
-- ex 2.11
-- ex 2.12
-- ex 2.13
