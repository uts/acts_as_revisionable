# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'acts_as_revisionable/version'

Gem::Specification.new do |s|
  s.name = 'acts_as_revisionable'
  s.version = ActsAsRevisionable::VERSION
  s.homepage = 'http://github.com/bdurand/acts_as_revisionable'
  s.date = '2012-01-24'

  s.authors = ['Brian Durand']
  s.email = 'brian@embellishedvisions.com'

  s.summary = 'ActiveRecord extension that provides revision support so that history can be tracked and changes can be reverted.'
  s.description = 'ActiveRecord extension that provides revision support so that history can be tracked and changes can be reverted. Emphasis for this plugin versus similar ones is including associations, saving on storage, and extensibility of the model.'

  s.extra_rdoc_files = [ 'README.rdoc' ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'activerecord', '>= 5.1.3'
  s.add_development_dependency 'sqlite3', '>= 0'
  s.add_development_dependency 'rspec', '= 2.14.1'
end
