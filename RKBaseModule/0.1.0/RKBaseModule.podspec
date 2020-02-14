#
# Be sure to run `pod lib lint RKBaseModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RKBaseModule'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RKBaseModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/beedroid/RKBaseModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'beedroid' => 'beedroid@163.com' }
  s.source           = { :git => 'https://github.com/beedroid/RKBaseModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RKBaseModule/Classes/**/*.{h,m}'
  s.requires_arc = true
  non_arc_files = 'RKBaseModule/Classes/KeychainItemWrapper.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sp|
    sp.source_files = non_arc_files
    sp.requires_arc = false
  end
  
  # s.resource_bundles = {
  #   'RKBaseModule' => ['RKBaseModule/Assets/*.png']
  # }

   s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.dependency "CocoaLumberjack","3.1.0"
   s.dependency 'JSONModel', '1.7.0'
   s.dependency "MBProgressHUD","1.0.0"
   
end
