Pod::Spec.new do |s|
    s.platform      = :ios, '7.0'
    s.name          = 'SocialBluetooth'
    s.version       = '0.0.3'
    s.summary       = 'SocialBluetooth wrapper for CoreBluetooth'
    s.author        = {
        'Joe Newbry' => 'joenewbry@gmail.com'
        }
    s.homepage = 'http://www.joenewbry.me'
    s.license      = {
                    :type => 'Open Source',
                    }
    s.source = {
        :git => 'https://github.com/joenewbry/SocialBluetooth.git',
        :tag => s.version.to_s
    }
    s.source_files = '*.{h,m}'
    s.requires_arc = true
    s.frameworks = 'UIKit', 'CoreBluetooth', 'Foundation'
end
