#
# Be sure to run `pod lib lint PXxlogger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  
  s.name             = 'PXxlogger'
  s.version          = '0.1.0'
  s.summary          = 'ios 高性能 logger 仓库'
  s.description      = <<~DESC
     xlogger 仓库，基于腾讯的 mars 的 xlog 模块
  DESC
  s.homepage         = 'https://github.com/pianxian/PXxlogger'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'pianxian' => '935932000@qq.com' }
  s.source           = { :git => 'https://github.com/pianxian/PXxlogger.git', :tag => s.version.to_s }

  s.requires_arc     = true
  s.platform         = :ios, '10.0'
  s.ios.deployment_target = '10.0'
  s.source_files = 'PXXlogger/Classes/**/*'
#  s.public_header_files = 'Pod/Classes/**/*.h'
  # 如果依赖了library（记得把lib前缀，以及.tbd去掉）
  s.libraries  = 'z'
  # 这里是资源文件的路径
    # s.resource_bundles = {
    #   'PXxlogger' => ['/Assets/*.png']
    # }
    # 这里是头文件的路径
    # s.public_header_files = 'Pod/Classes/**/*.h'

  # # 如果依赖了三方pod库
  # s.dependency 'AFNetWorking', '~> 5.0.2'
#  # 如果需要修改pod中的target设置，写在这里
#  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64', 'ENABLE_BITCODE' => 'NO' }
    #  s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.ios.vendored_frameworks = 'Vendor/mars.framework'
end
