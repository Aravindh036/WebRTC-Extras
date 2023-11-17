Pod::Spec.new do |s|
    s.name                      = 'WebRTCExtras'
    s.version                   = '0.0.15'
    s.summary                   = 'A Objective C library for WebRTC'
    s.homepage                  = 'https://github.com/Aravindh036/WebRTC-Extras.git'
    s.license                   = 'MIT'
    s.module_name               = 'WebRTCExtras'
    s.author                    = {
        'Aravindh'  => 'aravindh036@gmail.com'
    }
    s.source                    = {
        :git => 'https://github.com/Aravindh036/WebRTC-Extras.git',
        :tag => s.version
    }
    #s.ios.deployment_target     = "12"
    s.osx.deployment_target     = "10.13"
    s.osx.frameworks            = "Cocoa"
    s.osx.pod_target_xcconfig   = {
        'EXCLUDED_ARCHS[sdk=osx*]' => 'arm64',
        'ONLY_ACTIVE_ARCH' => 'YES'
    }
    s.osx.user_target_xcconfig  = {
        'EXCLUDED_ARCHS[sdk=osx*]' => 'arm64',
        'ONLY_ACTIVE_ARCH' => 'YES'
    }
    s.pod_target_xcconfig       = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig      = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    #s.ios.vendored_frameworks       = "Sources/WebRTCExtras.xcframework"
    s.osx.vendored_frameworks       = "Sources/WebRTCExtras.xcframework"
end
