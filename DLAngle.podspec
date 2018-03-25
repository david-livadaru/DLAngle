Pod::Spec.new do |s|

  s.name         = "DLAngle"
  s.version      = "1.0.1"
  s.summary      = "A Swift module which provides support for a strong typed mathematical angles."

  s.homepage     = "https://github.com/davidlivadaru/DLAngle"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = "David Livadaru"

  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.12"
  s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "10.0"

  s.source       = { :git => "https://github.com/davidlivadaru/DLAngle.git", :tag => "#{s.version}" }

  s.source_files = "Sources/**/*.{h,m,swift}"

  s.dependency "DLInterval"

end
