# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_revisionable/version"

Gem::Specification.new do |s|
  s.name = "acts_as_revisionable"
  s.version = ActsAsRevisionable::VERSION

  s.authors = ["Brian Durand"]
  s.date = "2012-01-24"
  s.description = "ActiveRecord extension that provides revision support so that history can be tracked and changes can be reverted. Emphasis for this plugin versus similar ones is including associations, saving on storage, and extensibility of the model."
  s.email = "brian@embellishedvisions.com"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "lib/acts_as_revisionable.rb",
    "lib/acts_as_revisionable/revision_record.rb",
    "spec/acts_as_revisionable_spec.rb",
    "spec/revision_record_spec.rb",
    "spec/spec_helper.rb",
    "spec/version_1_1_upgrade_spec.rb"
  ]
  s.homepage = "http://github.com/bdurand/acts_as_revisionable"
  s.require_paths = ["lib"]
  s.summary = "ActiveRecord extension that provides revision support so that history can be tracked and changes can be reverted."

  s.add_runtime_dependency(%q<activerecord>, [">= 2.3.9"])
  s.add_development_dependency(%q<composite_primary_keys>, ["= 5.0.13"])
  s.add_development_dependency(%q<sqlite3>, [">= 0"])
  s.add_development_dependency(%q<rspec>, ["= 2.14.1"])
end
