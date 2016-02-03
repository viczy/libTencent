Pod::Spec.new do |s|
  s.name                = "libTencent"
  s.version             = "2.9.5"
  s.summary             = "The Official iOS SDK Tencent Open API."
  s.homepage            = "http://open.qq.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2014 Tencent. All rights reserved.
      LICENSE
  }
  s.platform            = :ios
  s.requires_arc        = true

  s.source              = { :git=> "https://github.com/viczy/libTencent.git", :tag => s.version.to_s }
  s.source_files        = 'libTencent/TencentOpenAPI.framework/**/*.{h,m}' 
  s.public_header_files = 'libTencent/TencentOpenAPI.framework/Headers/**/*.h'
   s.libraries          = 'iconv', 'z', 'c++', 'sqlite3'
  s.frameworks          = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'
end
