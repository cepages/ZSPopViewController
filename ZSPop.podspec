#
# Be sure to run `pod lib lint ZSPop.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZSPop'
  s.version          = '0.0.2'
  s.summary          = 'a category of UINavigationController for popping the appointed controller.'


  s.description      = <<-DESC
a category of UINavigationController for popping the appointed controller.
                       DESC

  s.homepage         = 'https://github.com/zuoshen123/ZSPopViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zuoshen123' => 'zuotong_zhao@hotmail.com' }
  s.source           = { :git => 'https://github.com/zuoshen123/ZSPopViewController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZSPop/Classes/**/*'

end
