Pod::Spec.new do |spec|
  spec.name                  = 'ParticleCategories'
  spec.version               = '1.0'
  spec.summary               = 'Particle\'s Objective-C categories.'
  spec.description           = 'Adds convience methods for common objects in UIKit & Foundation.'
  spec.homepage              = 'https://github.com/ParticleApps/Categories'
  spec.license               = { :type => 'MIT' , :file => 'LICENSE'}
  spec.author                = { 'Rocco Del Priore' => 'rocco@particleapps.co' }
  spec.source                = { :git => 'https://github.com/ParticleApps/Categories.git', :tag => "#{spec.version}" }
  spec.social_media_url      = 'https://twitter.com/ParticleAppsCo'
  spec.frameworks            = 'Foundation', 'UIKit'
  spec.ios.deployment_target = '9.0'
  spec.source_files          = "ParticleCategories", "ParticleCategories/**/*.{h,m}"
end
