require "rake/sprockets"

module Rake
  module Templates
    class Context
      def asset_path(file)
        Rake::Sprockets.url(file)
      end
    end
  end
end
