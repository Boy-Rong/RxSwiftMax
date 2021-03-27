#
# Be sure to run `pod lib lint RxSwiftMax.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxSwiftMax'
  s.version          = '0.1.0'
  s.summary          = 'RxSwift 升级版'

  s.description      = <<-DESC
  RxSwift 升级版
                       DESC

  s.homepage         = 'https://github.com/rongheng/RxSwiftMax'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rongheng' => 'rongheng.rh@gmail.com' }
  s.source           = { :git => 'https://github.com/rongheng/RxSwiftMax.git', :tag => s.version.to_s }

  
  s.ios.deployment_target = '10.0'
  s.default_subspec = "RxSwift", "RxCocoa"
  s.swift_version = '5.1'
  s.cocoapods_version = '>= 1.6.0'
  
  
  s.subspec "RxSwift" do |ss|
      ss.header_dir    = "RxSwift"
      ss.source_files  = "RxSwiftMax/Sources/RxSwift/*.swift"
      ss.framework     = "Foundation"
      ss.dependency "RxSwift", "~> 6.1.0"
  end
  
  s.subspec "RxCocoa" do |ss|
      ss.header_dir    = "RxCocoa"
      ss.source_files  = "RxSwiftMax/Sources/RxCocoa/**/*.swift"
      ss.framework     = "UIKit"
      ss.dependency "RxCocoa", "~> 6.1.0"
  end

end
