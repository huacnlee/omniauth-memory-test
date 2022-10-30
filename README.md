## Get Started

```bash
$ https://github.com/huacnlee/omniauth-memory-test.git
$ cd omniauth-memory-test
$ bundle
$ rails db:create db:migrate
$ rake memory
```

Output:

> 🧨 Total retained means there has number of bytes memory leak.

```
bundle exec derailed exec perf:objects
Booting: production
Database 'foo_development' already exists
Endpoint: "/"
Running 1 times
Total allocated: 251707 bytes (5728 objects)
Total retained:  40040 bytes (1001 objects)

allocated memory by gem
-----------------------------------
    200544  foo/app
     10835  activesupport-7.0.4
     10406  actionpack-7.0.4
      7961  rack-2.2.4
      5136  hashie-5.0.0
      3398  other
      2560  actionview-7.0.4
      2392  ipaddr
      2088  logger
      1376  uri
      1193  railties-7.0.4
       760  activerecord-7.0.4
       664  warden-1.2.9
       634  random
       544  omniauth-2.1.0
       416  concurrent-ruby-1.1.10
       400  delegate
       240  monitor
        80  securerandom
        80  set

....

retained memory by gem
-----------------------------------
     40000  foo/app
        40  activesupport-7.0.4

retained memory by file
-----------------------------------
     40000  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb
        40  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb

retained memory by location
-----------------------------------
     40000  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb:3
        40  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb:213

retained memory by class
-----------------------------------
     40000  String
        40  Hash

retained objects by gem
-----------------------------------
      1000  foo/app
         1  activesupport-7.0.4

retained objects by file
-----------------------------------
      1000  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb
         1  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb

retained objects by location
-----------------------------------
      1000  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb:3
         1  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb:213

retained objects by class
-----------------------------------
      1000  String
         1  Hash
```
