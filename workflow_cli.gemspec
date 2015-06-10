# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'workflow_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "workflow_cli"
  spec.version       = WorkflowCli::VERSION
  spec.authors       = ["George Banis"]
  spec.email         = ["gbanis@gmail.com"]

  spec.summary       = %q{A collection of command line tools that integrate Git, Github and Trello to help you be more productive.}
  spec.description   = %q{Workflow CLI allows you to perform common workflow tasks right from your terminal. Forget about clicking multiple links to get a simple thing done. Reduce your development time. Be more productive. Feel less frustrated.}
  spec.homepage      = "https://github.com/gbanis/workflow_cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
