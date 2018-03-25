
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "humanize_number/version"

Gem::Specification.new do |spec|
  spec.name          = "humanize-number"
  spec.version       = HumanizeNumber::VERSION
  spec.authors       = ["Hrvoje Šimić"]
  spec.email         = ["shime@twobucks.co"]

  spec.summary       = %q{Humnaizes numbers.}
  spec.description   = %q{Humanizes numbers.}
  spec.homepage      = "https://github.com/shime/humanize-number"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
