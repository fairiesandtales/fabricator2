module Admin
  class StaticController < Admin::ApplicationController
    def welcome; end

    def visual_map
      @boundary = Map.boundary
      @map = Map.joins(:map_type).pluck(:x, :y, :color)
    end
  end
end
