Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "VntripFramework"
  s.summary = "Vntrip public framwork"
  s.requires_arc = true
  s.version = "1.0.1"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "HoangNA" => "hoang.a.ngo@vntrip.vn" }
  s.homepage = "https://github.com/Shjv4/VntripFramework"
  s.source = { :git => "https://github.com/Shjv4/VntripFramework.git", :tag => "#{s.version}"}
  s.framework = "UIKit"
  s.source_files = "VntripFramework/Classes/*.{swift,h,m}"
  #s.resources = "VntripFramework/**/*.{png,jpeg,jpg,storyboard,xib}"
end