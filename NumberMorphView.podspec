#
# Be sure to run `pod lib lint NumberMorphView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NumberMorphView"
  s.version          = "0.1.0"
  s.summary          = "A label view for number tweening or morphing."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                            NumberMorphView is a label view for displaying numbers which can transition or animate
                            using a technique called number tweening or number morphing.
                       DESC

  s.homepage         = "https://github.com/me-abhinav/NumberMorphView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Abhinav Chauhan" => "me.abhinavchauhan@gmail.com" }
  s.source           = { :git => "https://github.com/me-abhinav/NumberMorphView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://www.facebook.com/me.abhinav'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NumberMorphView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
