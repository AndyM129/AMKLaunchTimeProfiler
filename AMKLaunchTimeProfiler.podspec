#
# Be sure to run `pod lib lint AMKLaunchTimeProfiler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'AMKLaunchTimeProfiler'
    s.version          = '1.0.0'
    s.summary          = 'iOS application cold launch time consumption analysis tool.'
    s.description      = 'iOS application cold launch time consumption analysis tool.'
    s.homepage         = 'https://github.com/AndyM129/AMKLaunchTimeProfiler'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'MengXinxin' => 'andy_m129@baidu.com' }
    s.source           = { :git => 'https://github.com/AndyM129/AMKLaunchTimeProfiler.git', :tag => s.version.to_s }
    s.ios.deployment_target = '9.0'
    s.source_files = 'AMKLaunchTimeProfiler/Classes/**/*.{h,m}'
    s.public_header_files = 'AMKLaunchTimeProfiler/Classes/Core/*.h'
    s.frameworks = 'UIKit'
    s.dependency 'YYCache'
    s.dependency 'YYModel'
    s.dependency 'Aspects'
    s.dependency 'SSZipArchive'
end
