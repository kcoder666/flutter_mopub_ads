#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_mopub_ads.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_mopub_ads'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin to integrate with Mopub ads.'
  s.description      = <<-DESC
A flutter plugin to integrate with Mopub ads.
                       DESC
  s.homepage         = 'https://github.com/kcoder666/flutter_mopub_ads'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'KCoder' => 'me@kcoder.dev' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.dependency 'mopub-ios-sdk'
end
