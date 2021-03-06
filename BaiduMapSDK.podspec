#
# Be sure to run `pod lib lint BaiduMapSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BaiduMapSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BaiduMapSDK.'

  s.description      = <<-DESC
百度地图SDK自定义的动态包，解决组件化静态库依赖的问题
                       DESC

  s.homepage         = 'https://github.com/liop/BaiduMapSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liop' => 'tmdqq01@gmail.com' }
  s.source           = { :git => 'https://gogs.liop.xyz/ModulizationDemo/BaiduMapSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.default_subspec = 'zip'

  s.subspec 'zip' do |zip| 
    zip.vendored_frameworks = '*.framework'
  end
end
