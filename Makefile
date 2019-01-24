COMPOSE := docker-compose -p jabber-psql
USER :=docker exec -it jabber-psql_jabber_1 sh -c "ejabberdctl register admin localhost mohan143"
start:
	@$(COMPOSE) up jabber

stop:
	@$(COMPOSE) rm -s -v -f

user:
	@$(USER)