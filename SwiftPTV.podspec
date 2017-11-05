Pod::Spec.new do |s|
  s.name             = 'SwiftPTV'
  s.version          = '0.0.3'
  s.summary          = 'A PTV Timetable framework written in Swift.'

  s.description      = <<-DESC
PTV Timetable V3 API framework for iOS and macOS written in Swift, with growing support for all of the REST API.
                       DESC

  s.homepage         = 'https://github.com/evilgoldfish/SwiftPTV'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Evan'
  s.source           = { :git => 'https://github.com/evilgoldfish/SwiftPTV.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/evilgoldfish01'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftPTV/Classes/**/*.{swift}'

end
