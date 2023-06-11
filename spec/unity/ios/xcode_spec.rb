require_relative '../../../src/unity/ios/xcode'

describe Build::IOS::Xcode do
  context 'get_export_method' do
    it 'Production環境を指定した場合にapp-storeが返されることを確認' do
      xcode = Build::IOS::Xcode.new
      export_method = xcode.get_export_method(System::Shipping::PRODUCTION)
      expect(export_method).to eq 'app-store'
    end

    it 'Production環境以外を指定した場合にdevelopmentが返されることを確認' do
      xcode = Build::IOS::Xcode.new
      export_method = xcode.get_export_method(System::Shipping::STAGING)
      expect(export_method).to eq 'development'

      export_method = xcode.get_export_method(System::Shipping::DEV)
      expect(export_method).to eq 'development'
    end
  end

  context 'get_configuration' do
    it 'Production環境を指定した場合にReleaseスキーマが返されることを確認' do
      xcode = Build::IOS::Xcode.new
      configuration = xcode.get_configuration(System::Shipping::PRODUCTION)
      expect(configuration).to eq 'Release'
    end

    it 'Production環境以外を指定した場合にDebugスキーマが返されることを確認' do
      xcode = Build::IOS::Xcode.new
      configuration = xcode.get_configuration(System::Shipping::STAGING)
      expect(configuration).to eq 'Debug'

      configuration = xcode.get_configuration(System::Shipping::DEV)
      expect(configuration).to eq 'Debug'
    end
  end
end