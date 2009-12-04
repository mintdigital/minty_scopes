require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'

desc 'Default: Run Tests'
task :default => :test

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "minty_scopes"
    gem.summary = %Q{Useful, reusable named_scopes for ActiveRecord.}
    gem.email = "philnash@gmail.com"
    gem.homepage = "https://github.com/mintdigital/minty_scopes"
    gem.authors = ["Dean Strelau", "Mint Digital"]
    gem.extra_rdoc_files = ["README.mkdn", 'Rakefile']
    gem.has_rdoc = false
    gem.rdoc_options = ["--line-numbers", "--inline-source","--main", "README.txt"]
    gem.add_dependency "activerecord", ">= 2.1.0"
    gem.add_dependency "activesupport", ">= 2.1.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end