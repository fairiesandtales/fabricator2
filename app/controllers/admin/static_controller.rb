module Admin
  class StaticController < Admin::ApplicationController
    def welcome; end

    def visual_map
      @resources = Map.all
    end
  end
end
