$:.unshift 'lib'

require 'whmcs/version'

Gem::Specification.new do |s|
  s.name             = 'whmcs-ruby'
  s.version          = WHMCS::Version
  s.date             = Time.now.strftime('%Y-%m-%d')
  s.summary          = 'whmcs-ruby: Ruby bindings for the WHMCS API descends from dotblock/whmcs-ruby with all the downstream fixes'
  s.homepage         = 'https://github.com/timrogers/whmcs-ruby'
  s.authors          = ['Joshua Priddle', 'Tim Rogers', 'Felipe Coury','Andreyv','Harisankar P S']
  s.email            = ['jpriddle@nevercraft.net', 'tim@gocardless.com','felipe.coury@gmail.com','jujav4ik@gmail.com','github@hsps.in']

  s.files            = %w[ Rakefile README.markdown ]

  s.files           += Dir['lib/**/*']
  s.files           += Dir['test/**/*']

  s.add_dependency('crack', '~> 0.4.3')
  s.add_dependency('htmlentities', '~> 4.3.4')

  s.add_development_dependency('shoulda')

  s.extra_rdoc_files = ['README.markdown']
  s.rdoc_options     = ["--charset=UTF-8"]

  s.description = <<-DESC
    whmcs-ruby: Ruby bindings for the WHMCS API. Descends from dotblock/whmcs-ruby with al the
    downstream fixes. Refer README.
  DESC
end
