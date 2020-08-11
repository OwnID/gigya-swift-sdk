Pod::Spec.new do |spec|
  spec.name          = 'GigyaNssRelease'
  spec.version       = '0.3.01'
  spec.license       = 'Apache 2.0'
  spec.homepage      = 'https://developers.gigya.com/display/GD/Native+Screen-Sets'
  spec.author       = 'Gigya SAP'
  spec.summary       = <<-DESC
                        This library enables you to use additional 
                        authentication methods from the standard login flow
                        DESC

  spec.source        = { :git => 'https://github.com/SAP/gigya-swift-sdk.git', :tag => 'nss/v0.3.01' }
  spec.module_name   = 'GigyaNss'
  spec.swift_version = '5.2'

  spec.platform = :ios
  spec.ios.deployment_target  = '11.0'
  
  spec.source_files       = 'GigyaNss/GigyaNss/*.swift', 'GigyaNss/GigyaNss/*/*.swift', 'GigyaNss/GigyaNss/*/*/*.swift'

  spec.framework      = 'SystemConfiguration'
  spec.dependency 'Gigya'
  spec.library = 'c++', 'z'
  
  spec.dependency 'Flutter', '1.12.1309'
  spec.vendored_frameworks = 'GigyaNss/Flutter/Release/App.framework'
end
