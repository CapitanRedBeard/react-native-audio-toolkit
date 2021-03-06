require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNAudioToolkit"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/CapitanRedBeard/react-native-audio-toolkit"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/CapitanRedBeard/react-native-audio-toolkit.git', :tag => "v#{s.version}" }
  s.requires_arc        = false
  s.platform            = :ios, "7.0"
  
  s.dependency 'React/Core'
  s.source_files        = "ios/ReactNativeAudioToolkit/*.{h,m}"

end