Pod::Spec.new do |s|
  s.name         = 'WebRTCExtras'
  s.version      = '0.0.14'
  s.summary      = 'A Objective C library for WebRTC'
  s.homepage     = 'https://github.com/Aravindh036/WebRTC-Extras'
  s.license      = 'MIT'
  s.module_name  = 'WebRTCExtras'
  s.author       = { 'Aravindh' => 'aravindh036@gmail.com' }
  s.source       = { :git => 'https://github.com/Aravindh036/WebRTC-Extras', :tag => "v#{s.version}" }
  s.platform     = :ios, '11.0'
  s.ios.vendored_frameworks = "Sources/WebRTCExtras.xcframework"
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
