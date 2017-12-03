require 'rake'

Gem::Specification.new do |spec|
  spec.name                   = 'google-api-fcm'
  spec.version                = '0.0.1'
  spec.authors                = ['Ilya Krigouzov']
  spec.email                  = ['webmaster@oniksfly.com']
  spec.summary                = %q{Client for accessing Firebase Cloud Messaging APIs}
  spec.homepage               = 'https://github.com/oniksfly/google-api-fcm'
  spec.license                = 'Apache-2.0'
  spec.files                  = FileList['lib/google/apis/*.rb', 'lib/google/apis/messages/*.rb']

  spec.required_ruby_version  = '~> 2.0'
  spec.add_runtime_dependency 'google-api-client', '~> 0.17'
end