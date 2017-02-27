Pod::Spec.new do |s| 

s.name         = "VntripFramework"
s.version      = "1.0.21"
s.summary      = "Vntrip public framwork"
s.homepage     = "https://github.com/Shjv4/VntripFramework"
#s.screenshot  = ".png"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "HoangNA" => "hoang.a.ngo@vntrip.vn" }
#s.social_media_url   = "https://twitter.com/"
s.platform     = :ios, "8.0"
s.ios.deployment_target = "8.0"
s.source = { :git => "https://github.com/Shjv4/VntripFramework.git", :tag => s.version }
#s.source = { :git => "https://github.com/Shjv4/VntripFramework.git", :tag => "#{s.version}"}
#s.framework = "UIKit"
s.source_files = "VntripFramework/Classes/*.swift"
s.resources = "VntripFramework/Resources/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
s.requires_arc = true

end