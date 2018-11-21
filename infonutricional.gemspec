# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "infonutricional/version"

Gem::Specification.new do |spec|
  spec.name          = "infonutricional"
  spec.version       = Infonutricional::VERSION
  spec.authors       = ["alu0100889680"]
  spec.email         = ["alu0100889680@ull.edu.es"]

  spec.summary       = %q{Pruebas del valor energético}
  spec.description   = %q{Se va a desarrollar una practica usando TDD (Desarrollo guiado por pruebas) donde se escribirán las pruebas en primer lugar, seguido de la/s clases suficientes para cumplir las pruebas.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0100889680"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0100889680"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
end
