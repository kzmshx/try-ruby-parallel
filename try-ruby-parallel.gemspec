# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name = "try-ruby-parallel"
  gem.version = "0.1.0"
  gem.authors = ["Kazumasa Hirata"]
  gem.email = ["kzmshx@gmail.com"]
  gem.summary = "Try parallel gem"
  gem.description = gem.summary
  gem.homepage = "https://github.com/kzmshx/try-ruby-parallel"
  gem.license = "MIT"

  gem.files = `git ls-files`.split("\n")
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6.0"

  gem.add_runtime_dependency "parallel"

  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "standard", "~> 1.3"
end
