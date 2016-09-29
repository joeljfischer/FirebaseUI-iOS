Pod::Spec.new do |s|
  s.name         = 'FirebaseStorageUI'
  s.version      = '0.5.6-rc3'
  s.summary      = 'UI Storage library for Firebase.'
  s.homepage     = 'https://github.com/firebase/FirebaseUI-iOS'
  s.license      = { :type => 'Apache 2.0' }
  s.author       = 'Firebase'
  s.source = { :git => "../../FirebaseUI-iOS.git" }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.ios.framework = 'UIKit'
  s.requires_arc = true
  s.default_subspecs = 'Storage'

  s.subspec 'Storage' do |storage|
    storage.source_files = "FirebaseStorageUI/*.{h,m}"
    storage.dependency 'Firebase/Storage', '~> 3.0'
    storage.dependency 'SDWebImage'
  end
end
