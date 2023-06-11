require_relative '../../system/configs/config'
require_relative '../../git/utility'
require_relative '../../archives/archive'
require_relative 'config'

module Build
  module Common
    class ConfigService
      # @param [Unity::System::Platform]
      # @param [System::Shipping]
      # @param [Integer]
      # @return [Unity::Common::Build::Config]
      def create_config(platform, env, build_id)
        config = System::Configs::Config.load_config
        unity = config.unity
        project_name = unity.project_name
        archives = Archives::Archive.new
        cur_branch_name = Git::Utility.get_current_branch_name

        build_config = Build::Common::Config.new(
          platform,
          unity.version,
          archives.platform_dir_path(
            true,
            project_name,
            cur_branch_name,
            env,
            build_config.build_id,
            platform
          ),
          project_name,
          env,
          config.store.app_version,
          unity.product_name,
          build_id || (archives.latest_archive_id(false, project_name, cur_branch_name, env) + 1),
          config.store.app_identifier
        )
        build_config
      end
    end
  end
end
