
# Uncomment the next line to define a global platform for your project
platform :ios, '12.3'

target 'mini-flickr-photo-search-app' do
  use_frameworks!

  pod 'AlamofireImage', '~> 3.3.0'
  pod 'Alamofire', '~> 4.5.1'
  pod 'SwiftyJSON'
end


post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.3'
      end
    end
end
