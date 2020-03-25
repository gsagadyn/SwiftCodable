Pod::Spec.new do |s|
  s.name = 'SwiftyCodable'
  s.version = '1.0.0'
  s.summary = 'The set of extensions that makes your "codable" life easier.'
  s.homepage = 'https://github.com/gsagadyn/SwiftyCodable'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Grzegorz Sagadyn' => 'sagadyn@gmail.com' }
  s.source = { :git => 'https://github.com/gsagadyn/SwiftyCodable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.source_files = 'SwiftyCodable/**/*'
  s.swift_versions = '5.2'
end