Pod::Spec.new do |s|
  s.name             = "Alertable"
  s.version          = "0.1.1"
  s.summary          = "A simplified way of presenting alerts on iOS with Swift."

  s.description      = <<-DESC
A simplified way of presenting alerts on iOS with Swift, inspired by AlertKit: https://cocoapods.org/pods/AlertKit
                       DESC

  s.homepage         = "https://github.com/BellAppLab/Alertable"
  s.license          = 'MIT'
  s.author           = { "Bell App Lab" => "apps@bellapplab.com" }
  s.source           = { :git => "https://github.com/BellAppLab/Alertable.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/BellAppLab'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.frameworks = 'UIKit'
end
