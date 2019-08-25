Pod::Spec.new do |s|
  s.name             = 'SwiftPTV'
  s.version          = '0.0.6'
  s.summary          = 'A PTV Timetable framework written in Swift.'

  s.description      = <<-DESC
PTV Timetable V3 API framework for iOS and macOS written in Swift, with growing support for all of the REST API.
                       DESC

  s.homepage         = 'https://github.com/evilgoldfish/SwiftPTV'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Evan'
  s.source           = { :git => 'https://github.com/evilgoldfish/SwiftPTV.git', :tag => s.version.to_s }


  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.swift_version = '5.0'

  s.source_files = 'Classes/**/*.{swift}'

end
