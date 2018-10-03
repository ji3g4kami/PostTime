Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "PostTime"
s.module_name = 'PostTime'
s.summary = "Measures the difference between two date"
s.requires_arc = true

# 2
s.version = "1.0.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "David Wu" => "ji3g4kami@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/ji3g4kami/PostTime"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/ji3g4kami/PostTime.git", 
             :tag => "#{s.version}" }

# 7 - Frameworks, libraries and dependencies
s.framework = 'Security'

# 8
s.source_files = "PostTime/*"

# 10
s.swift_version = "4.2"

s.static_framework = true
end
