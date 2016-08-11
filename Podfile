# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'Politicl' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Politicl

  # Networking / Parsing
  pod 'AFNetworking', :git => 'https://github.com/wikimedia/AFNetworking.git', :branch => 'release/3.1.1'
  pod 'Mantle', '~> 2.0.0'

  # Images
  pod 'SDWebImage', :git => 'https://github.com/wikimedia/SDWebImage.git', :commit => 'bb49df83e72f2231a191e9477a85f0effe13430a'

  # Utilities
  pod 'libextobjc/EXTScope', '~> 0.4.1'
  pod 'BlocksKit/Core', '~> 2.2.0'
  pod 'BlocksKit/UIKit', '~> 2.2.0'
  pod 'KVOController'

  # Dates
  pod 'NSDate-Extensions', :git => 'git@github.com:wikimedia/NSDate-Extensions.git'

  # Autolayout
  pod 'Masonry', '0.6.2'
  
  # Diagnostics
  pod 'PiwikTracker'
  pod 'HockeySDK', '~> 3.8.2'
  pod 'Tweaks'

  # Activities
  pod 'TUSafariActivity'

  target 'PoliticlTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'OCMockito', '~> 1.4.0'
    pod 'OCHamcrest', '~> 4.2.0'
    pod 'Nocilla'
  end

  target 'PoliticlUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
