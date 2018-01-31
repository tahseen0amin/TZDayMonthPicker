#
# Be sure to run `pod lib lint TZDayMonthPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TZDayMonthPicker'
  s.version          = '0.1.0'
  s.summary          = 'Handy Picker for picking day and month for user's birthday'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Handy Picker for picking day and month for user's birthday.
                       DESC

  s.homepage         = 'https://github.com/tahseen0amin/TZDayMonthPicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tasin Zarkoob' => 'tahseen0amin@gmail.com' }
  s.source           = { :git => 'https://github.com/tahseen0amin/TZDayMonthPicker.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/taseenAmin'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TZDayMonthPicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TZDayMonthPicker' => ['TZDayMonthPicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
 s.frameworks = 'UIKit'
  s.dependency 'Montserrat'
end
