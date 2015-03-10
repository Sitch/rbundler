Gem::Specification.new do |s|
  s.name = 'rbundler'
  s.version = '0.0.1'

  s.summary = 'managing r package dependencies'
  s.description = 'managing r package dependencies with or without bundler. adding bundler like handling of version ranges for r package dependencies.'

  s.authors = ['Michael Sitchenko']
  s.email = ['michael.sitchenko@persado.com']
  s.homepage = 'https://github.com/sitch/rbundler'

  s.bindir = 'bin'
  s.executables = ['rbundle']

  # s.license = 'MIT'

  s.files += Dir['lib/**/*.rb']
  s.files += Dir['lib/*.jar']
  s.files += Dir['spec/*.rb']
  s.files += Dir['spec/*/*'].delete_if { |f| f =~ /~$/ }
  # s.files += Dir['MIT-LICENSE']
  s.files += Dir['*.md']
  s.files += Dir['Gemfile*']
  s.test_files += Dir['spec/*_spec.rb']

  s.add_runtime_dependency 'bundler'
  s.add_runtime_dependency "rserve-simpler"
  # s.add_runtime_dependency "bundler", "~> 1.5"
  # s.add_development_dependency "rake", "~> 10.0"
  # s.add_development_dependency "minitest", "~> 5.3"
end
