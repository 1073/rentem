rentem
======

Rentem is a Web application sample by Erlang.  
This is configured by using the following framework.

* [ChicagoBoss](http://www.chicagoboss.org/)
* [AngularJS](http://angularjs.org/)
* [Bootstrap](http://getbootstrap.com/)

---

## Run

* move rentem dir
* get deps

  `./rebar get-deps`
  
* compile
  
    `./rebar compile`
    
* Create DB
  * rentem use postgres. (DB name rentem)
* write boss.config file as follows:

        {db_host, "localhost"},
        {db_port, 5432},
        {db_adapter, pgsql},
        {db_username, "postgres"},
        {db_password, "postgres"},
        {db_database, "rentem"}

* start server

  `./init-dev.sh`

* migrate table

  `boss_migrate:run(gsd_web).`
  
  
* access page [http://localhost:8001/](http://localhost:8001/)
    * userid / pass = admin /admin