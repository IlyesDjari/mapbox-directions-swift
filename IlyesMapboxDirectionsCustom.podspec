Pod::Spec.new do |s|
  s.name             = 'IlyesMapboxDirectionsCustom'
  s.version          = '0.23.3'
  s.summary          = 'Mapbox Directions API client for iOS in Swift.'
  s.description      = 'A Swift library to interact with the Mapbox Directions API.'
  s.module_name      = 'MapboxDirections'
  s.static_framework = true

  s.homepage         = 'https://github.com/IlyesDjari/mapbox-directions-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ilyes Djari' => 'ilyes.djari@icapps.com' }
  s.source           = { :git => 'https://github.com/IlyesDjari/mapbox-directions-swift.git', :tag => s.version.to_s }

  s.platform         = :ios, '15.6'
  s.swift_version    = '5.9'

  # ✅ Swift and Objective-C sources
  s.source_files = [
    'MapboxDirections/**/*.swift',
    'MapboxDirectionsObjc/**/*.{h,m}'
  ]

  # ✅ Public headers
  s.public_header_files = 'MapboxDirectionsObjc/include/**/*.h'
  s.header_mappings_dir = 'MapboxDirectionsObjc/include'

  # ✅ Optional resources (ensure folder exists or remove)
  s.resources = 'MapboxDirectionsTests/resources/**/*'

  s.requires_arc = true

  s.exclude_files = [
    'MapboxDirectionsTests/**',
    'MapboxDirections.xcodeproj',
    'docs/**',
    'scripts/**'
  ]

  # ✅ Prevent compatibility header generation
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'SWIFT_OBJC_INTERFACE_HEADER_NAME' => ''
  }

  s.dependency 'Polyline', '5.1.0'
  s.dependency 'OHHTTPStubs', '~> 9.0'
end
