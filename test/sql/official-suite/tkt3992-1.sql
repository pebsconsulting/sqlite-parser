-- original: tkt3992.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE parameters1(
       mountcnt    INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
       version     REAL NOT NULL
    );
    INSERT INTO parameters1(mountcnt, version) VALUES(1, 1.0);

    CREATE TABLE parameters2(
       mountcnt    INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
       version     REAL CHECK (typeof(version) == 'real')
    );
    INSERT INTO parameters2(mountcnt, version) VALUES(1, 1.0)
;UPDATE parameters1 SET mountcnt = mountcnt + 1;
    SELECT * FROM parameters1
;UPDATE parameters2 SET mountcnt = mountcnt + 1;
    SELECT * FROM parameters2
;CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
      ALTER TABLE t1 ADD COLUMN c DEFAULT 3;
      SELECT * FROM t1
;UPDATE t1 SET a = 'one';
      SELECT * FROM t1
;CREATE TABLE t2(a REAL, b REAL, c REAL);
      INSERT INTO t2 VALUES(1, 2, 3);
      CREATE TRIGGER tr2 BEFORE UPDATE ON t2 BEGIN
        SELECT tcl('set res', typeof(new.c));
      END;
  
      UPDATE t2 SET a = 'I';