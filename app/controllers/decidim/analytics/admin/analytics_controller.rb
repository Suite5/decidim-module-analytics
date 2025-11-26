# frozen_string_literal: true

module Decidim
  module Analytics
    module Admin
      class AnalyticsController < Analytics::Admin::ApplicationController

        def index
          @server_address = ENV.fetch("MATOMO_SERVER_ADDRESS", nil)
          @site_id = ENV.fetch("MATOMO_SITE_ID", nil)
          @token_auth = ENV.fetch("MATOMO_TOKEN_AUTH", nil)
        end
      end
    end
  end
end
