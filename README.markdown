# whmcs-ruby

whmcs-ruby provides Ruby bindings for the [WHMCS API](http://wiki.whmcs.com/API:Functions).

### This WHMCS repo contains pullrequests from

1. https://github.com/timrogers/whmcs-ruby
2. https://github.com/fcoury/whmcs-ruby
3. https://github.com/anvyst/whmcs-ruby
4. https://github.com/coderhs/whmcs-ruby

that are hidden inside or not merged into dotblock/whmcs-ruby

## Several nice contributions haven't gone upstream or merged :(

### megamsys/whmcs-ruby descends from [timrogers/whmcs-ruby](https://github.com/timrogers/whmcs-ruby)

Here are those.

#### Fix from [timrogers/whmcs-ruby](https://github.com/timrogers/whmcs-ruby/commit/4e5406158ebbcdfdd505aa485822be80930cadfd)
1. Adds getproducts


### Fix from [anvyst/whmcs-ruby](https://github.com/anvyst/whmcs-ruby)
1. API key access

#### Fix from [fcoury/whmcs-ruby](https://github.com/dotblock/whmcs-ruby/compare/master...fcoury:master)
1. Fixed breakage of hash, incases of special characters
2. Added WHMCS::Response as an easier wrapper for the respose
3. Attributes is now HashWithIndifferentAccess and added Response#key? 
4. Added Order#upgrade_product method
5. Add cancel request though client
6. Fixed comments on Client#add_cancel_request to match overall
7. Moved add_credit from Invoice to Client


## Usage

    require 'whmcs'

    WHMCS.configure do |config|
      config.api_url      = 'http://example.com/includes/api.php'
      config.api_username = 'someusername'
      config.api_password = 'c4ca4238a0b923820dcc509a6f75849b' # md5 hash
    end

    WHMCS::Client.get_clients_details(:clientid => '1')

## API Access Key

Recently, WHMCS offered [another type](http://docs.whmcs.com/API:Access_Keys) of authenticating API requests.
Using API Access Key might be useful for mobile devices and/or IPv6 bug WHMCS whitelists currently have.

	require 'whmcs'

    WHMCS.configure do |config|
      config.api_url      = 'http://example.com/includes/api.php'
      config.api_username = 'someusername'
      config.api_password = 'c4ca4238a0b923820dcc509a6f75849b' # md5 hash
	  config.api_access_key = 'YetAnotherAPIAccessKeyForWHMCS'
    end

    WHMCS::Client.get_clients_details(:clientid => '1')


See the [documentation](http://dotblock.github.com/whmcs-ruby/) for more
details.


## Installation
	
    gem 'whmcs-ruby', '0.4', :source => 'https://github.com/megamsys/whmcs-ruby.git'


## Copyright

Copyright (c) 2011 DotBlock.com, see LICENSE in this repo for details.
