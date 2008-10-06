require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'
require 'lib/minty_scopes/version'

desc 'Default: Run Tests'
task :default => ['test']

spec = Gem::Specification.new do |s|
  s.name             = "minty_scopes"
  s.version          = MintyScopes::VERSION
  s.summary          = "Useful, reusable named_scopes for ActiveRecord."
  s.homepage         = "https://github.com/mintdigital/minty_scopes"

  s.files            = FileList["[A-Z]*", "{lib,test}/**/*"]

  s.has_rdoc         = false
  s.extra_rdoc_files = ["README.mkdn", 'Rakefile']
  s.rdoc_options     = ["--line-numbers", "--inline-source",
                        "--main", "README.txt"]

  s.authors          = ["Dean Strelau"]
  s.email            = "dean@mintdigital.com"

  s.add_dependency "activerecord", ">= 2.1.0"
  s.add_dependency "activesupport", ">= 2.1.0"
end

Rake::GemPackageTask.new spec do |pkg|
  pkg.need_tar = true
  pkg.need_zip = true
end

desc "Generate a gemspec file for GitHub"
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_ruby
  end
end
