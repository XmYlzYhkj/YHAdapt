#
# Be sure to run `pod lib lint YHAdapt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHAdapt'
  s.version          = '1.0.0'
  s.summary          = '适配各种系统升级引起公共问题'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
适配各种系统升级引起公共问题，避免全部放到CommonSDK,造成非必要的升级
                       DESC

  s.homepage         = 'https://github.com/XmYlzYhkj/YHAdapt'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhengxiaolang' => 'haifeng3099@126.com' }
  s.source           = { :git => 'https://github.com/XmYlzYhkj/YHAdapt.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHAdapt/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YHAdapt' => ['YHAdapt/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
