Pod::Spec.new do |s|
    s.name                      = 'WebRTCExtras'
    s.version                   = '0.0.16'
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
        :commit => "12f88707a7a8890c91bea7bd00e43ad770dd65e9"
    }
    s.ios.deployment_target     = "12"
    s.osx.deployment_target     = "10.13"
    s.vendored_frameworks       = "Sources/WebRTCExtras/WebRTCExtras.xcframework.zip"
end
