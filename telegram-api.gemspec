# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'telegram/api/version'

Gem::Specification.new do |spec|
  spec.name          = "telegram-api"
  spec.version       = Telegram::Api::VERSION
  spec.authors       = ["Tommaso Visconti"]
  spec.email         = ["tommaso.visconti@gmail.com"]
  spec.description   = %q{Command-line interface to Telegram API http://telegram.org/}
  spec.summary       = %q{Telegram-cli is a ruby gem to interact with Telegram API}
  spec.homepage      = "https://github.com/tommyblue/telegram-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
