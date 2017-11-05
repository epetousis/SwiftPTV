Pod::Spec.new do |s|

  s.name         = "SwiftPTV"
  s.version      = "0.0.1"
  s.summary      = "A PTV Timetable framework written in Swift."

  s.description  = <<-DESC
  PTV Timetable V3 API framework for iOS and macOS written in Swift, with growing support for all of the REST API.
                   DESC

  s.homepage     = "https://github.com/evilgoldfish/SwiftPTV"

  s.license      = "MIT"

  s.author    = "Evan"
  s.social_media_url   = "http://twitter.com/evilgoldfish01"

  s.source       = { :git => "https://github.com/evilgoldfish/SwiftPTV.git", :tag => "#{s.version}" }

  s.source_files  = "Sources", "Sources/**/*.{swift}"
  s.exclude_files = "Sources/Exclude"

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"

end
