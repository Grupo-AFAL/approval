# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'approval/version'

Gem::Specification.new do |s|
  s.name        = 'approval'
  s.version     = Approval::VERSION
  s.authors     = ['Yoshiyuki Hirano']
  s.email       = ['yhirano@me.com']
  s.summary     = 'Approval flow for Rails'
  s.description = s.summary
  s.homepage    = 'https://github.com/yhirano55/approval'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.2.2'

  s.files         = Dir['app/**/*', 'config/**/*', 'db/**/*', 'lib/**/*', 'LICENSE.txt',
                        'README.md']
  s.require_paths = 'lib'
  s.metadata['rubygems_mfa_required'] = 'true'
end
