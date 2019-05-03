class Map < ApplicationRecord
  belongs_to :map_type

  def color
    map_type.color
  end

  class << self
    def boundary
      {
          x: Map.minimum(:x)..Map.maximum(:x),
          y: Map.minimum(:y)..Map.maximum(:y)
      }
    end
  end
end
