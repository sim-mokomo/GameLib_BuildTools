module Build
  module Common
    class Config
      # @return [String]
      attr_accessor :platform
      # @return [String]
      attr_accessor :version
      # @return [String]
      attr_accessor :output_path
      # @return [String]
      attr_accessor :project_name
      # @return [String]
      attr_accessor :assets_path
      # @return [String]
      attr_accessor :environment
      # @return [String]
      attr_accessor :app_version
      # @return [String]
      attr_accessor :product_name
      # @return [Integer]
      attr_accessor :build_id
      # @return [String]
      attr_accessor :app_id

      def initialize(
        platform,
        version,
        output_path,
        project_name,
        environment,
        app_version,
        product_name,
        build_id,
        app_id
      )
        @platform = platform
        @version = version
        @output_path = output_path
        @project_name = project_name
        @environment = environment
        @app_version = app_version
        @product_name = product_name
        @build_id = build_id
        @app_id = app_id
      end
    end
  end
end
