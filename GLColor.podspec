#
# Be sure to run `pod lib lint GLColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GLColor'
  s.version          = '1.0'
  s.summary          = 'UIColor subclass/extension for device gamut-aware colors'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
GLColor is a drop-in, ready to use, UIColor subclass and extension that can be
used to generate device gamut-aware (sRGB or DCI-P3) UIColors or convert
existing ones automatically.

As Apple Human Interface Guidelines reports its important to use wide color on
compatible displays whenever possible to ensure the best color experience in
your applications. Unfortunately the regular UIColor uses sRGB as the default
color space, causing DCI-P3 compatible to render in sRBG mode all the time,
instead of being able to show all the possible colors.
                       DESC

  s.homepage         = 'https://github.com/giulio92/GLColor'
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { 'giulio92' => 'giulio.lombardo@gmail.com' }
  s.source           = { :git => 'https://github.com/giulio92/GLColor.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Classes/**/*'
end
