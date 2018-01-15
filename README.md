== README

Step to do :

1. Use ruby 2.3.0. If you use rvm just install it with
```bash
$ rvm install ruby-2.3.0
```

2. Then just run bundle install :
```bash
$ bundle install
```

3. Replace the database config on config/database.yml with your current db configuration:
```YAML
default: &default
  adapter: postgresql # your db adapter postgresql, sqlite3, etc.
  pool: 5
  timeout: 5000
  host: pg_94 # your db hostname localhost, mypostgres, etc
  username: postgres # your postgres username default: postgres
  password: postgres # your postgres password default: postgres
```

4. run db create, this actually doesn't use any db. But just need db to work on heroku(still googling to solve it! ;) ):
```bash
$ rake db:create
```

5. Makesure the bundling success. Then run the server :
```bash
$ rails s
=> Booting WEBrick
=> Rails 4.2.6 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
=> Ctrl-C to shutdown server
[2018-01-12 09:24:26] INFO  WEBrick 1.3.1
[2018-01-12 09:24:26] INFO  ruby 2.3.0 (2015-12-25) [x86_64-linux]
[2018-01-12 09:24:26] INFO  WEBrick::HTTPServer#start: pid=2397 port=3000
```

6. Goto your browser and type http://localhost:3000

7. That's it. Simple Right!