# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mancurses"
  spec.version       = "0.0.4"
  spec.authors       = ["Rahul Kumar"]
  spec.email         = ["sentinel1879@gmail.com"]
  spec.description   = %q{view manpages in an ncurses window and navigate with vim bindings}
  spec.summary       = %q{view manpages in an ncurses window and navigate with vim bindings and much much moah}
  spec.homepage      = "https://github.com/rkumar/mancurses"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "rbcurse-core"
end
