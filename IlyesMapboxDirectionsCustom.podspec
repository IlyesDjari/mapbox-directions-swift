Pod::Spec.new do |s|
  s.name             = 'IlyesMapboxDirectionsCustom'
  s.version          = '0.23.3'
  s.summary          = 'Mapbox Directions API client for iOS in Swift.'

  s.description      = <<-DESC
                       A Swift library to interact with the Mapbox Directions API, 
                       offering support for both Swift and Objective-C.
                       DESC

  s.homepage         = 'https://github.com/IlyesDjari/mapbox-directions-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ilyes Djari' => 'ilyes.djari@icapps.com' }
  s.source           = { :git => 'https://github.com/IlyesDjari/mapbox-directions-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.6'
  s.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '15.6'
  }

  s.subspec 'Objc' do |ss|
    ss.source_files      = 'MapboxDirectionsObjc/**/*.{h,m}'
    ss.public_header_files = 'MapboxDirectionsObjc/include/MapboxDirections.h'
    ss.module_map        = 'MapboxDirectionsObjc/module.modulemap'
  end
  s.resources        = 'MapboxDirectionsTests/resources/**/*'

  s.dependency 'Polyline', '5.1.0'
  s.dependency 'OHHTTPStubs', '~> 9.0'

  s.swift_version    = '5.9'
end