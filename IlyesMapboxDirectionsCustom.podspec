Pod::Spec.new do |s|
  s.name             = 'IlyesMapboxDirectionsCustom'
  s.version          = '0.23.3'
  s.summary          = 'Mapbox Directions API client for iOS in Swift.'
  s.module_name      = 'MapboxDirections'
  s.static_framework = true
  s.description      = <<-DESC
    A Swift library to interact with the Mapbox Directions API, 
    offering support for both Swift and Objective-C.
  DESC

  s.homepage         = 'https://github.com/IlyesDjari/mapbox-directions-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ilyes Djari' => 'ilyes.djari@icapps.com' }
  s.source           = { :git => 'https://github.com/IlyesDjari/mapbox-directions-swift.git', :tag => s.version.to_s }

  s.platform         = :ios, '15.6'
  s.swift_version    = '5.9'

  s.source_files = 'MapboxDirections/**/*.swift', 'MapboxDirectionsObjc/**/*.{h,m}', 'MapboxDirectionsObjc/include/**/*.h'
  s.public_header_files = 'MapboxDirections/include/**/*.h', 'MapboxDirectionsObjc/include/MapboxDirections.h'
  s.resources = 'MapboxDirectionsTests/resources/**/*'

  s.exclude_files = [
    'MapboxDirections/Match/**',
    'MapboxDirectionsTests/**',
    'MapboxDirections.xcodeproj',
    'docs/**',
    'scripts/**'
  ]

  s.dependency 'Polyline', '5.1.0'
  s.dependency 'OHHTTPStubs', '~> 9.0'
end