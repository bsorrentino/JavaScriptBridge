Pod::Spec.new do |s|
  s.name                  = "JavaScriptBridge"
  s.version               = "1.0"
  s.summary               = "Write iOS apps in Javascript! JavaScriptBridge provides the way to write iOS apps with JavaScript."
  s.homepage              = "https://github.com/kishikawakatsumi/JavaScriptBridge"
  s.social_media_url      = "https://twitter.com/k_katsumi"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "kishikawa katsumi" => "kishikawakatsumi@mac.com" }
  s.source                = { :git => "https://github.com/kishikawakatsumi/JavaScriptBridge.git", :tag => "v#{s.version.to_s}" }

  s.platform              = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.requires_arc          = true

  #s.source_files          = "Classes/**/*"

  #s.private_header_files  = ["Classes/Private/*.h", "Classes/**/FrameworkSupport/**/*.h"]
  #s.frameworks            = "JavaScriptCore"

   s.subspec 'Private' do |private|
    private.source_files  = ["Classes/Private/*.{h,m}"]
    private.private_header_files  = ["Classes/Private/*.{h,m}"]
   end

   s.subspec 'Core' do |core|
    #core.resource_bundle = {'ShareKit' => ['Classes/ShareKit/Core/SHKSharers.plist', 'Classes/ShareKit/Localization/*.lproj', 'Classes/ShareKit/*.png']}
    core.source_files  = ['Classes/*.{h,m}', "Classes/Private/*.{h,m}"]
    core.private_header_files  = ["Classes/Private/*.{h,m}"]
    #core.exclude_files = non_arc_files
    #core.frameworks    = 'SystemConfiguration', 'Security', 'MessageUI', "AVFoundation", "MobileCoreServices", "CoreMedia", "Social"
    core.dependency 'Private'
    #core.dependency 'SAMTextView', '~> 0.2.1'
    #core.dependency 'ShareKit/Reachability'
    #core.dependency 'ShareKit/NoARC'
   end

   s.subspec 'Foundation' do |foundation|
    #foundation.resource_bundle = {'ShareKit' => ['Classes/ShareKit/Core/SHKSharers.plist', 'Classes/ShareKit/Localization/*.lproj', 'Classes/ShareKit/*.png']}
    foundation.source_files  = ['Classes/iOS/FrameworkSupport/Foundation/*.{h,m}']
    #foundation.private_header_files  = ["Classes/Private/*.{h,m}"]
    #foundation.exclude_files = non_arc_files
    #foundation.frameworks    = 'SystemConfiguration', 'Security', 'MessageUI', "AVFoundation", "MobileCoreServices", "CoreMedia", "Social"
    foundation.dependency 'JavaScriptBridge/Core'
    #foundation.dependency 'SAMTextView', '~> 0.2.1'
    #foundation.dependency 'ShareKit/Reachability'
    #foundation.dependency 'ShareKit/NoARC'
   end

   s.subspec 'UIKit' do |uikit|
    #uikit.resource_bundle = {'ShareKit' => ['Classes/ShareKit/Core/SHKSharers.plist', 'Classes/ShareKit/Localization/*.lproj', 'Classes/ShareKit/*.png']}
    uikit.source_files  = ['Classes/iOS/FrameworkSupport/UIKit/*.{h,m}', 'Classes/iOS/FrameworkSupport/CoreImage/*.{h,m}']
    #uikit.private_header_files  = ["Classes/Private/*.{h,m}"]
    #uikit.exclude_files = non_arc_files
    #uikit.frameworks    = 'SystemConfiguration', 'Security', 'MessageUI', "AVFoundation", "MobileCoreServices", "CoreMedia", "Social"
    uikit.dependency 'JavaScriptBridge/Core'
    uikit.dependency 'JavaScriptBridge/Foundation'
    #uikit.dependency 'ShareKit/Reachability'
    #uikit.dependency 'ShareKit/NoARC'
   end

   s.subspec 'QuartzCore' do |quartzcore|
    #quartzcore.resource_bundle = {'ShareKit' => ['Classes/ShareKit/Core/SHKSharers.plist', 'Classes/ShareKit/Localization/*.lproj', 'Classes/ShareKit/*.png']}
    quartzcore.source_files  = ['Classes/iOS/FrameworkSupport/QuartzCore/*.{h,m}']
    #quartzcore.private_header_files  = ["Classes/Private/*.{h,m}"]
    #quartzcore.exclude_files = non_arc_files
    #quartzcore.frameworks    = 'SystemConfiguration', 'Security', 'MessageUI', "AVFoundation", "MobileCoreServices", "CoreMedia", "Social"
    quartzcore.dependency 'JavaScriptBridge/Core'
    quartzcore.dependency 'JavaScriptBridge/Foundation'
    #quartzcore.dependency 'ShareKit/Reachability'
    #quartzcore.dependency 'ShareKit/NoARC'
   end

end
