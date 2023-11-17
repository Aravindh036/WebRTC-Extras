Pod::Spec.new do |s|
    s.name                      = 'WebRTCExtras'
    s.version                   = '0.0.15'
    s.summary                   = 'A Objective C library for WebRTC'
    s.homepage                  = 'https://github.com/Aravindh036/WebRTC-Extras.git'
    s.license                   = 'MIT'
    s.module_name               = 'WebRTCExtras'
    s.author                    = {
        'aravindh'  => 'aravindh036@gmail.com'
    }
    s.license                = {
        :type => "MIT",
        :text => "Copyright (C) 2023"
    }
    s.source                    = {
        :git => 'https://github.com/Aravindh036/WebRTC-Extras.git',
        :tag => "v#{s.version}"
    }
    s.ios.deployment_target     = "12"
    s.osx.deployment_target     = "10.13"
    s.vendored_frameworks       = "Sources/WebRTCExtras/WebRTCExtras.xcframework"
end
