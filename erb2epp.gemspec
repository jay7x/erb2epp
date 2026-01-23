# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'erb2epp'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = 'Convert Ruby ERB templates to Puppet EPP'
  s.description = <<~DESC
    This tool aims to convert the templates and rewrite the syntax where
    needed. It also provides a list of variables used, which makes it easy to
    add data types for additional validation and provide the context to the
    template.
  DESC
  s.authors = [
    'Ewoud Kohl van Wijngaarden',
    'Yury Bushmelev',
    'Vox Pupuli',
  ]
  s.email       = ['voxpupuli@groups.io']
  s.homepage    = 'https://github.com/voxpupuli/erb2epp'
  s.metadata    = {
    'source_code_uri' => 'https://github.com/voxpupuli/erb2epp',
  }

  s.files = Dir['lib/**/*.rb', 'bin/*'] + [
    'LICENSE',
    'README.md',
  ]
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.required_ruby_version = '>= 3.2', '< 5'

  s.add_dependency 'temple', '~> 0.10.0'
end
