#
# Be sure to run `pod lib lint NumberMorphView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NumberMorphView"
  s.version          = "0.2.0"
  s.summary          = "A view for number tweening or morphing."
  s.description      = <<-DESC
                            NumberMorphView is a view for displaying numbers which can transition or animate
                            using a technique called number tweening or number morphing.
                       DESC

  s.homepage         = "https://github.com/me-abhinav/NumberMorphView"
  s.license          = 'MIT'
  s.author           = { "Abhinav Chauhan" => "me.abhinavchauhan@gmail.com" }
  s.source           = { :git => "https://github.com/me-abhinav/NumberMorphView.git", :branch => 'master', :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  # s.resource_bundles = {
  #   'NumberMorphView' => ['Pod/Assets/*.png']
  # }
end
