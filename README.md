## Get Started

```bash
$ https://github.com/huacnlee/omniauth-memory-test.git
$ cd omniauth-memory-test
$ bundle
$ rails db:create db:migrate
$ rake memory
```

Output:

> 🧨 `Total retained` - means there has number of bytes memory leak.

## OmniAuth 2.0

```rb
gem "omniauth", "~> 2.0"
gem "omniauth-github"
```

Output:

```
bundle exec derailed exec perf:objects
Booting: production
Database 'foo_development' already exists
Endpoint: "/"
Running 1 times
Total allocated: 50367 bytes (710 objects)
Total retained:  40 bytes (1 objects)
```

## OmniAuth 1.9

```rb
gem "omniauth", "~> 1.9"
gem "omniauth-github", "~> 1.4"
```

```
bundle exec derailed exec perf:objects
Booting: production
Database 'foo_development' already exists
Endpoint: "/"
Running 1 times
Total allocated: 50247 bytes (707 objects)
Total retained:  1504 bytes (9 objects)

allocated memory by gem
-----------------------------------
     11890  activesupport-7.0.4
      9777  actionpack-7.0.4
      7921  rack-2.2.4
      4904  hashie-5.0.0
      3144  other
      2392  ipaddr
      1566  logger
      1376  uri
      1193  railties-7.0.4
      1168  actionview-7.0.4
       760  activerecord-7.0.4
       664  warden-1.2.9
       624  foo/app
       597  random
       551  json
       504  omniauth-1.9.2
       416  concurrent-ruby-1.1.10
       400  delegate
       240  monitor
        80  securerandom
        80  set

allocated memory by file
-----------------------------------
      4904  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb
      3366  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb
      3088  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/mock.rb
      2782  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb
      2392  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb
      2392  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb
      1728  <internal:kernel>
      1566  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb
      1312  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/inflector/methods.rb
      1240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/callbacks.rb
      1176  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/notifications/instrumenter.rb
      1088  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/instrumentation.rb
      1041  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/railties-7.0.4/lib/rails/rack/logger.rb
      1031  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb
      1024  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/rfc2396_parser.rb
      1016  <internal:timev>
       968  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/hash_with_indifferent_access.rb
       880  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/tagged_logging.rb
       821  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/json/encoding.rb
       760  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/request/session.rb
       703  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/log_subscriber.rb
       664  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/middleware/remote_ip.rb
       619  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/etag.rb
       597  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/random/formatter.rb
       551  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/json/common.rb
       520  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/body_proxy.rb
       504  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/omniauth-1.9.2/lib/omniauth/strategy.rb
       480  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/subscriber.rb
       416  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb
       408  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/lookup_context.rb
       408  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/warden-1.2.9/lib/warden/proxy.rb
       400  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/delegate.rb
       400  <internal:pack>
       368  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/journey/router.rb
       336  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.1.10/lib/concurrent-ruby/concurrent/collection/map/non_concurrent_map_backend.rb
       320  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/rendering.rb
       272  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/common.rb
       256  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal.rb
       256  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/journey/gtg/simulator.rb
       248  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/journey/path/pattern.rb
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/monitor.rb
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/rendering.rb
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/pool_manager.rb
       208  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb
       208  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/execution_wrapper.rb
       208  /Users/jason/Downloads/foo/app/controllers/application_controller.rb
       200  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/layouts.rb
       192  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/middleware/cookies.rb
       192  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/response.rb
       160  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/cache.rb

allocated memory by location
-----------------------------------
      1952  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/mock.rb:109
      1728  <internal:kernel>:49
      1384  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:196
      1360  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:378
      1312  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/inflector/methods.rb:75
      1227  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb:16
      1096  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/notifications/instrumenter.rb:64
       960  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:413
       944  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:425
       932  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:88
       928  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/instrumentation.rb:53
       928  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:431
       880  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:373
       880  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:414
       809  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:79
       800  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/callbacks.rb:199
       777  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:89
       672  <internal:timev>:225
       624  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb:180
       597  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/random/formatter.rb:148
       592  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:419
       514  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:464
       512  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/request/session.rb:56
       480  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:414
       432  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:636
       416  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/tagged_logging.rb:32
       400  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/delegate.rb:349
       400  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/rfc2396_parser.rb:210
       400  <internal:pack>:277
       344  <internal:timev>:224
       339  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb:23
       336  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/concurrent-ruby-1.1.10/lib/concurrent-ruby/concurrent/collection/map/non_concurrent_map_backend.rb:123
       336  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/mock.rb:75
       331  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/etag.rb:74
       327  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/json/common.rb:312
       320  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:420
       288  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/omniauth-1.9.2/lib/omniauth/strategy.rb:412
       280  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:179
       280  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:66
       277  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/json/encoding.rb:92
       264  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/tagged_logging.rb:70
       248  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/rfc2396_parser.rb:150
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:585
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/pool_manager.rb:22
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/subscriber.rb:135
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/subscriber.rb:148
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:101
       240  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/body_proxy.rb:12
       239  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb:39
       236  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:460

allocated memory by class
-----------------------------------
     11725  String
     11536  Array
     10752  Hash
      2160  IPAddr
      1760  MatchData
      1672  ActionDispatch::Request
      1600  Proc
      1384  OmniAuth::Strategy::Options
      1202  Regexp
       944  Rack::Utils::HeaderHash
       480  Range
       456  ActiveSupport::HashWithIndifferentAccess
       344  Time
       280  Integer
       240  ActiveSupport::Notifications::Event
       224  JSON::Ext::Generator::State
       216  ActionDispatch::Response::Buffer
       200  ActiveSupport::JSON::Encoding::JSONGemEncoder::EscapedString
       176  StringScanner
       168  Warden::Config
       160  Rack::BodyProxy
       160  StringIO
       136  WelcomeController
       128  ActionDispatch::Response
       120  ActionDispatch::Response::ContentTypeHeader
       120  ActiveSupport::Callbacks::Filters::Environment
       120  Rack::MockResponse
       120  URI::Generic
        96  OmniAuth::Strategies::GitHub
        96  Warden::Proxy
        88  ActionDispatch::Request::Session
        88  ActionView::LookupContext
        80  <<Unknown>>
        80  ActionDispatch::Http::Headers
        80  Digest::SHA256
        80  Hashie::Array
        72  ActionDispatch::RemoteIp::GetIp
        72  ActiveSupport::ParameterFilter::CompiledFilter
        72  Method
        72  Thread::Mutex
        64  Monitor
        64  Thread::ConditionVariable
        40  ActionDispatch::Journey::Path::Pattern::MatchData
        40  ActionDispatch::Request::Session::Options
        40  ActionDispatch::Response::Header
        40  ActionDispatch::Response::RackBody
        40  ActionView::I18nProxy
        40  ActionView::PathSet
        40  ActiveRecord::AsynchronousQueriesTracker::Session
        40  ActiveSupport::ArrayInquirer

allocated objects by gem
-----------------------------------
       149  activesupport-7.0.4
       139  actionpack-7.0.4
        94  hashie-5.0.0
        85  rack-2.2.4
        55  ipaddr
        34  other
        23  actionview-7.0.4
        19  activerecord-7.0.4
        15  logger
        14  railties-7.0.4
        14  random
        13  uri
        11  warden-1.2.9
        10  delegate
         8  omniauth-1.9.2
         7  json
         6  foo/app
         4  concurrent-ruby-1.1.10
         4  monitor
         2  securerandom
         1  set

allocated objects by file
-----------------------------------
        94  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb
        55  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb
        38  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb
        38  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb
        24  <internal:kernel>
        23  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb
        20  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/hash_with_indifferent_access.rb
        20  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/inflector/methods.rb
        20  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/mock.rb
        18  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/callbacks.rb
        15  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb
        14  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/random/formatter.rb
        13  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/middleware/remote_ip.rb
        13  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/railties-7.0.4/lib/rails/rack/logger.rb
        12  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb
        11  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/tagged_logging.rb
        11  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/etag.rb
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/delegate.rb
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/log_subscriber.rb
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/json/encoding.rb
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/body_proxy.rb
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/rfc2396_parser.rb
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/rendering.rb
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/subscriber.rb
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/omniauth-1.9.2/lib/omniauth/strategy.rb
         8  <internal:timev>
         7  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/json/common.rb
         7  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/lookup_context.rb
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/rendering.rb
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/journey/router.rb
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/pool_manager.rb
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/warden-1.2.9/lib/warden/proxy.rb
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/instrumentation.rb
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/request/session.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/monitor.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/cache.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/mime_negotiation.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/layouts.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/abstract/connection_handler.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/log_subscriber.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/notifications/instrumenter.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/request.rb
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/response.rb
         4  /Users/jason/Downloads/foo/app/controllers/welcome_controller.rb
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/common.rb
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/abstract_controller/base.rb
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_controller/metal/request_forgery_protection.rb
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/parameters.rb
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/request.rb

allocated objects by location
-----------------------------------
        34  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:378
        24  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:413
        24  <internal:kernel>:49
        22  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:373
        22  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:414
        20  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/inflector/methods.rb:75
        19  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:79
        14  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/random/formatter.rb:148
        12  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:414
        12  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:464
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/delegate.rb:349
        10  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/callbacks.rb:199
         9  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb:16
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:420
         7  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:179
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:585
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:636
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/json/common.rb:312
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/logger/formatter.rb:23
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/pool_manager.rb:22
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb:180
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/json/encoding.rb:92
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/subscriber.rb:148
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:101
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:196
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/ipaddr.rb:408
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/core_ext/object/json.rb:39
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:89
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/etag.rb:74
         5  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:460
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:419
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/connection_adapters/abstract/connection_handler.rb:118
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activerecord-7.0.4/lib/active_record/log_subscriber.rb:18
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/hash_with_indifferent_access.rb:222
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/hash_with_indifferent_access.rb:71
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/parameter_filter.rb:88
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:391
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/omniauth-1.9.2/lib/omniauth/strategy.rb:412
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/body_proxy.rb:41
         4  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/rack-2.2.4/lib/rack/utils.rb:477
         4  <internal:timev>:224
         4  <internal:timev>:225
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/3.1.0/uri/rfc2396_parser.rb:210
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:434
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/http/response.rb:459
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/middleware/remote_ip.rb:158
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionpack-7.0.4/lib/action_dispatch/middleware/remote_ip.rb:173
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/layouts.rb:431
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/actionview-7.0.4/lib/action_view/rendering.rb:164
         3  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/callbacks.rb:101

allocated objects by class
-----------------------------------
       252  Array
       232  String
        54  Hash
        30  IPAddr
        20  Proc
        12  Range
        11  ActionDispatch::Request
        10  MatchData
         7  Integer
         6  OmniAuth::Strategy::Options
         5  ActiveSupport::HashWithIndifferentAccess
         5  ActiveSupport::JSON::Encoding::JSONGemEncoder::EscapedString
         4  Rack::BodyProxy
         4  Time
         3  ActionDispatch::Response::Buffer
         3  ActionDispatch::Response::ContentTypeHeader
         3  ActiveSupport::Callbacks::Filters::Environment
         2  <<Unknown>>
         2  ActionDispatch::Http::Headers
         2  ActiveSupport::Notifications::Event
         2  Digest::SHA256
         2  Hashie::Array
         2  Regexp
         2  StringIO
         1  ActionDispatch::Journey::Path::Pattern::MatchData
         1  ActionDispatch::RemoteIp::GetIp
         1  ActionDispatch::Request::Session
         1  ActionDispatch::Request::Session::Options
         1  ActionDispatch::Response
         1  ActionDispatch::Response::Header
         1  ActionDispatch::Response::RackBody
         1  ActionView::I18nProxy
         1  ActionView::LookupContext
         1  ActionView::PathSet
         1  ActiveRecord::AsynchronousQueriesTracker::Session
         1  ActiveSupport::ArrayInquirer
         1  ActiveSupport::JSON::Encoding::JSONGemEncoder
         1  ActiveSupport::ParameterFilter
         1  ActiveSupport::ParameterFilter::CompiledFilter
         1  JSON::Ext::Generator::State
         1  Method
         1  Monitor
         1  MonitorMixin::ConditionVariable
         1  OmniAuth::Strategies::GitHub
         1  Rack::MockResponse
         1  Rack::QueryParser::Params
         1  Rack::Request
         1  Rack::Response::Raw
         1  Rack::Utils::HeaderHash
         1  StringScanner

retained memory by gem
-----------------------------------
      1464  hashie-5.0.0
        40  activesupport-7.0.4

retained memory by file
-----------------------------------
      1464  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb
        40  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb

retained memory by location
-----------------------------------
      1384  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:196
        80  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:391
        40  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb:213

retained memory by class
-----------------------------------
      1384  OmniAuth::Strategy::Options
        80  Hashie::Array
        40  Hash

retained objects by gem
-----------------------------------
         8  hashie-5.0.0
         1  activesupport-7.0.4

retained objects by file
-----------------------------------
         8  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb
         1  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb

retained objects by location
-----------------------------------
         6  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:196
         2  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/hashie-5.0.0/lib/hashie/mash.rb:391
         1  /Users/jason/.rbenv/versions/3.1.0/lib/ruby/gems/3.1.0/gems/activesupport-7.0.4/lib/active_support/current_attributes.rb:213

retained objects by class
-----------------------------------
         6  OmniAuth::Strategy::Options
         2  Hashie::Array
         1  Hash
```
