# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cantor_carpets"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke Grecki"]
  s.date = "2012-10-08"
  s.description = "A ruby library for creating 2D cantor sets."
  s.email = "lukegrecki@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]
  s.files = [
    ".rbenv-version",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "images/cross.png",
    "images/dust.png",
    "images/sierpenski.png",
    "lib/cantor_carpets.rb",
    "test/helper.rb",
    "test/test_cantor_carpets.rb"
  ]
  s.homepage = "http://github.com/lukegrecki/cantor_carpets"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "A ruby library for creating 2D cantor sets."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<png>, [">= 0"])
      s.add_runtime_dependency(%q<hoe>, [">= 0"])
      s.add_runtime_dependency(%q<array_2d>, [">= 0"])
      s.add_runtime_dependency(%q<RubyInline>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<png>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 0"])
      s.add_dependency(%q<array_2d>, [">= 0"])
      s.add_dependency(%q<RubyInline>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<png>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 0"])
    s.add_dependency(%q<array_2d>, [">= 0"])
    s.add_dependency(%q<RubyInline>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

