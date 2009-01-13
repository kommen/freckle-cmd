# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{freckle-cmd}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dieter Komendera"]
  s.date = %q{2009-01-13}
  s.default_executable = %q{freckle}
  s.description = %q{Command line tool to track time with freckle (http://letsfreckle.com)}
  s.email = ["dieter@abloom.at"]
  s.executables = ["freckle"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = ["History.txt", "MIT-LICENSE", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "bin/freckle", "freckle.gemspec", "lib/freckle.rb", "lib/freckle/app_config.rb", "lib/freckle/cli.rb", "lib/freckle/entry.rb", "lib/freckle/project.rb", "script/console", "script/destroy", "script/generate", "test/entry_test.rb", "test/project_test.rb", "test/test_freckle_cli.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://letsfreckle.com}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{freckle-cmd}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Command line tool to track time with freckle (http://letsfreckle.com)}
  s.test_files = ["test/test_freckle_cli.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.1.3"])
      s.add_runtime_dependency(%q<activeresource>, [">= 2.2.2"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<json>, [">= 1.1.3"])
      s.add_dependency(%q<activeresource>, [">= 2.2.2"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.1.3"])
    s.add_dependency(%q<activeresource>, [">= 2.2.2"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
