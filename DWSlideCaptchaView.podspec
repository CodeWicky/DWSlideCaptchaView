Pod::Spec.new do |s|
  s.name         = "DWSlideCaptchaView"
  s.version      = "1.0.0"
  s.summary      = "A view to help you to do the slide captcha."
  s.description  = "A view to help you to do the slide captcha.You can customsize it as you want."
  s.homepage     = "https://github.com/CodeWicky/DWSlideCaptchaView"
  s.social_media_url   = "http://www.jianshu.com/u/a56ec10f6603"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "codeWicky" => "codewicky@163.com" }
  s.source       = { :git => "https://github.com/CodeWicky/DWSlideCaptchaView.git", :tag => s.version.to_s }
  s.source_files = "DWSlideCaptchaView/*.{h,m}"
  s.ios.deployment_target = '7.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true
end
