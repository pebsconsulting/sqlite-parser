-- original: delete2.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE q(s string, id string, constraint pk_q primary key(id));
    BEGIN;
    INSERT INTO q(s,id) VALUES('hello','id.1');
    INSERT INTO q(s,id) VALUES('goodbye','id.2');
    INSERT INTO q(s,id) VALUES('again','id.3');
    END;
    SELECT * FROM q
;SELECT * FROM q WHERE id='id.1'
;SELECT * FROM q
;SELECT * FROM q
;CREATE TABLE t1(a, b);
    CREATE TABLE t2(c, d);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t2 VALUES(3, 4);
    INSERT INTO t2 VALUES(5, 6)
;SELECT CASE WHEN c = 5 THEN b ELSE NULL END AS b, c, d FROM t1, t2
;DELETE FROM t1;