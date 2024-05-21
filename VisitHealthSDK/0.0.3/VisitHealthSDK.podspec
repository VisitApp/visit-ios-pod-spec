#
# Be sure to run `pod lib lint VisitHealthSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VisitHealthSDK'
  s.version          = '0.0.3'
  s.summary          = 'An SDK to inject the health kit data in Visit PWA'
  s.swift_versions   = '4.0'

# This description is used to generate tags and improve searsch results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  An iOS SDK to inject the health kit data in Visit PWA
                       DESC

  s.homepage         = 'https://github.com/VisitApp/VisitHealthSDK.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '81799742' => 'yash-vardhan@hotmail.com' }
  s.source           = { :git => 'https://github.com/VisitApp/VisitHealthSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'VisitHealthSDK/Classes/**/*.{swift,h,m}'
  s.dependency 'TwilioVideo', '~> 4.4'
  s.public_header_files = 'VisitHealthSDK/Classes/**/*.h'

  s.resource_bundles = {
    'VisitHealthSDK' => ['VisitHealthSDK/Assets/*.png','VisitHealthSDK/Assets/*.storyboard', 'VisitHealthSDK/Assets/*.xib']
  }

  s.pod_target_xcconfig = {
    'PRODUCT_BUNDLE_IDENTIFIER': 'com.getvisitapp.visitHealthSDK'
  }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
