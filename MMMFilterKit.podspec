#
# Be sure to run `pod lib lint MMMFilterKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMMFilterKit'
  s.version          = '0.1.0'
  s.summary          = 'MMMFilterKit is simple wrapper in Swift for CIFilter.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
MMMFilterKit will simplify usage of CIFilter for you.
It allows chaining, creating custom filters and fast processing using EAGL context.
Inspired by great CIFilterKit!
                       DESC

  s.homepage         = 'https://github.com/martinpilch/MMMFilterKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Martin Pilch' => 'martin.pilch@email.cz' }
  s.source           = { :git => 'https://github.com/martinpilch/MMMFilterKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MMMFilterKit/Classes/**/*'

  # s.resource_bundles = {
  #   'MMMFilterKit' => ['MMMFilterKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
