Gem::Specification.new do |s|
  s.name            = 'logstash-output-json_batch'
  s.version         = '0.1.2'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "This output lets you `POST` messages as JSON in a batched fashions"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["jwestberg"]
  s.email           = 'joel.westberg@lucidworks.com'
  s.homepage        = "http://lucidworks.com"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.1.0", "< 3.0.0"
  s.add_runtime_dependency "logstash-mixin-http_client", ">= 2.0.2", "< 3.0.0"

  # Constrain Maticore dependency to less than 0.5.0 because of changes in the async handling
  # see note in http.rb line 92-93
  s.add_runtime_dependency "manticore", "< 0.5.0"

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'webrick'
end

