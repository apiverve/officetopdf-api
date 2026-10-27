Pod::Spec.new do |s|
  s.name             = 'APIVerveOfficetoPDF'
  s.version          = '1.2.3'
  s.summary          = 'Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2...'
  s.description      = <<-'DESC'
Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

This iOS/macOS SDK provides a convenient way to access the Office to PDF from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/officetopdf?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/officetopdf-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveOfficetoPDF/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
