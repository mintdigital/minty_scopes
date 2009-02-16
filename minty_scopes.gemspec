# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{minty_scopes}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dean Strelau"]
  s.date = %q{2009-02-16}
  s.email = %q{dean@mintdigital.com}
  s.extra_rdoc_files = ["README.mkdn", "Rakefile"]
  s.files = ["Rakefile", "README.mkdn", "lib/minty_scopes", "lib/minty_scopes/associations.rb", "lib/minty_scopes/except.rb", "lib/minty_scopes/order.rb", "lib/minty_scopes/timestamps.rb", "lib/minty_scopes/version.rb", "lib/minty_scopes.rb", "test/test_helper.rb", "test/units", "test/units/associations_test.rb", "test/units/except_test.rb", "test/units/order_test.rb", "test/units/timestamps_test.rb"]
  s.homepage = %q{https://github.com/mintdigital/minty_scopes}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Useful, reusable named_scopes for ActiveRecord.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.1.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.1.0"])
      s.add_dependency(%q<activesupport>, [">= 2.1.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.1.0"])
    s.add_dependency(%q<activesupport>, [">= 2.1.0"])
  end
end
