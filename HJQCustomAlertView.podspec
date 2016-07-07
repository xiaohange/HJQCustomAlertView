Pod::Spec.new do |s|
  s.name         = "HJQCustomAlertView"
  s.version      = "0.0.1"
  s.summary      = "A fully customized AlertView dialog box of HJQCustomAlertView."
  s.homepage     = "https://github.com/XiaoHanGe/HJQCustomAlertView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "韩俊强" => "532167805@qq.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/XiaoHanGe/HJQCustomAlertView.git", :tag => s.version.to_s }
  s.source_files  = "HJQCustomAlertView", "HJQCustomAlertView/**/*.{h,m}"
  s.public_header_files = "HJQCustomAlertView/**/*.h"
  s.frameworks = "UIKit", "Foundation", "CoreGraphics"
  s.requires_arc = true
end
