
Pod::Spec.new do |s|
  s.name             = 'DoraemonKits'
  s.version          = '3.1.4'
  s.summary          = 'iOS APP UI 调试、性能监测工具; Fork https://github.com/didi/DoKit.git'
  
  s.description      = <<-DESC
  iOS APP UI 调试、性能监测工具; Fork https://github.com/didi/DoKit.git
                       DESC

  s.homepage         = 'https://www.dokit.cn'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'OrangeLab' => 'orange-lab@didiglobal.com' }
  s.source           = { :git => 'https://github.com/huipengo/DoKit.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.default_subspec = 'Core'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  
  s.subspec 'Core' do |ss| 
    ss.source_files = 'iOS/DoraemonKit/Src/Core/**/*.{h,m,c,mm}'
    ss.resource_bundle = {
      'DoraemonKit' => 'iOS/DoraemonKit/Resource/**/*'
    }
    ss.dependency 'FLEX'
  end

end
