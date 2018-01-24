
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "telegram/version"

Gem::Specification.new do |spec|
  spec.name          = "telegram-ruby"
  spec.version       = Telegram::VERSION
  spec.authors       = ["Alex Belenky"]
  spec.email         = ["bagirs@gmail.com"]

  spec.summary       = "Ruby wrapper for Telegram's Bot API"
  spec.homepage      = "https://github.com/Stajor/telegram-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'faraday', '~> 0'
  spec.add_dependency 'faraday_middleware', '~> 0'
end
