#
# Be sure to run `pod lib lint SKinConfigManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SKinConfigManager'
  s.version          = '0.1.1'
  s.summary          = '一套基于ObjC语言换肤的实现方案.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nanliSKy/SKinConfigManagerObjC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nanliSKy' => '827752527@qq.com' }
  s.source           = { :git => 'https://github.com/nanliSKy/SKinConfigManagerObjC.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SKinConfigManager/Classes/**/*'
  
end
