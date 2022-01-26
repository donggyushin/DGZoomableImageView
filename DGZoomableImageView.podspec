Pod::Spec.new do |s|
    s.name             = 'DGZoomableImageView'
    s.version          = '1.0.1'
    s.summary          = 'A zoomable, pan-able image view'
    s.homepage         = 'https://github.com/donggyushin/DGZoomableImageView'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'donggyushin' => 'donggyu9410@gmail.com' }
    s.source           = { :git => 'https://github.com/donggyushin/DGZoomableImageView.git', :tag => s.version.to_s }
    s.ios.deployment_target = '12.0'
    s.swift_version = '5.5'
    s.source_files = 'Sources/DGZoomableImageView/**/*'
  end
