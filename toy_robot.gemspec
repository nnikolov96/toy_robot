require_relative 'lib/toy_robot/version'

Gem::Specification.new do |spec|
  spec.name          = "toy_robot"
  spec.version       = ToyRobot::VERSION
  spec.authors       = ["Nikola"]
  spec.email         = ["nikolanenchevnikolov@gmail.com"]

  spec.summary       = 'Toy robot app for interview task'
  spec.description   = 'Toy robot app for interview task'
  spec.homepage      = "https://github.com/nnikolov96/toy_robot"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = 'https://github.com/nnikolov96/toy_robot'
  spec.metadata["source_code_uri"] = "https://github.com/nnikolov96/toy_robot"
  spec.metadata["changelog_uri"] = "https://github.com/nnikolov96/toy_robot"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
