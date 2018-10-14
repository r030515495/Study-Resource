# PostgreSql

- 建立 function 

	``` sql
	create or Replace function transfer(i_player text, i_recipient text, i_amount numeric(15, 2))
  RETURNS text
as
$$
DECLARE
  player_bal numeric;
begin
  select balance into player_bal from accounts where owner = i_player for Update;
  raise notice 'Value: %', player_bal;

  if not FOUND
  Then
    return 'Player account not found';
  end if;
  IF player_bal < i_amount
  then
    RETURN 'Not enough funds';
  end if;
  update accounts set balance = balance + i_amount where owner = i_recipient;
  if not FOUND
  then
    return 'Recipient does not exist';
  end if;

  update accounts set balance = balance - i_amount where owner = i_player;
  return 'OK';
end
$$
LANGUAGE plpgsql;

	```
	
- 建立 trigger 

	```sql
	create table fruits_in_stock (
	  name     text PRIMARY KEY,
	  in_stock integer not null,
	  reserved integer not null default 0,
	  check (in_stock between 0 and 1000),
	  check (reserved <= in_stock)
	);
	
	create table fruits_offer (
	  offer_id       serial primary key,
	  recipient_name text,
	  offer_date     timestamp default current_timestamp,
	  fruit_name     text REFERENCES fruits_in_stock,
	  offered_amount integer
	);
	
	
	create or replace FUNCTION reserve_stock_on_offer()
	  RETURNS trigger
	AS $$
	BEGIN
	  if tg_op = 'INSERT'
	  then
	    update fruits_in_stock set reserved = reserved + NEW.offered_amount where name = NEW.fruit_name;
	  ELSEIF tg_op = 'UPDATE'
	    then
	      update fruits_in_stock
	      set reserved = reserved - OLD.offered_amount + NEW.offered_amount
	      where name = NEW.fruit_name;
	  ELSEIF TG_OP = 'DELETE'
	    THEN
	      update fruits_in_stock SET reserved = reserved - OLD.offered_amount where name = OLD.fruit_name;
	  end if;
	  return new;
	end;
	$$
	LANGUAGE plpgsql;
	
	
	create trigger manage_reserve_stock_on_offer_change
	  AFTER INSERT OR UPDATE OR DELETE
	  on fruits_offer
	  for EACH ROW EXECUTE PROCEDURE reserve_stock_on_offer();
	
	
	insert into fruits_in_stock (name, in_stock, reserved)
	values ('APPLE', 500, 0),
	       ('ORANGE', 500, 0);
	
	
	select *
	from fruits_in_stock;
	
	
	INsert into fruits_offer (recipient_name, fruit_name, offered_amount)
	values ('Bob', 'APPLE', 100);
	  
	```
	
	
- 刪除 check 

	``` sql
	ALTER TABLE fruist_in_stock DROP CONSTRAINT fruist_in_stock_in_stock_check;	
	```
- 取得 constraint 資訊

	``` sql
	SELECT conname,consrc FROM pg_constraint
	```
	
	
	
