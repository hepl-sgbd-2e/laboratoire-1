alter session set "_ORACLE_SCRIPT"=true;

create role sgbd2s_role not identified;
grant alter session to sgbd2s_role;
grant create session to sgbd2s_role;
grant create table to sgbd2s_role;
grant create procedure to sgbd2s_role;
grant create sequence to sgbd2s_role;
grant create trigger to sgbd2s_role;
grant create type to sgbd2s_role;
GRANT CREATE ANY VIEW TO sgbd2s_role;
grant execute on sys.owa_opt_lock to sgbd2s_role;
grant execute on sys.dbms_lock to sgbd2s_role;

create user user_sgbd_2 identified by oracle default tablespace users account unlock;
alter user user_sgbd_2 quota unlimited on users;
grant sgbd2s_role to user_sgbd_2;