module Build
  module IOS
    class Config
      # @return [Unity::Common::Build::Config]
      attr_reader :common_config
      # @return [String]
      attr_reader :provisioning_profile_name
      # @return [String]
      attr_reader :team_id
      # @return [String]
      attr_reader :admob_application_id

      # @param [Unity::Common::Build::Config]
      def initialize(
        common_config,
        provisioning_profile,
        team_id,
        admob_application_id
      )
        @common_config = common_config
        @provisioning_profile = provisioning_profile
        @team_id = team_id
        @admob_application_id = admob_application_id
      end
    end
  end
end
