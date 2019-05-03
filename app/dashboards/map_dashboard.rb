require "administrate/base_dashboard"

class MapDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    map_type: Field::BelongsTo,
    id: Field::Number,
    x: Field::Number,
    y: Field::Number,
    z: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :map_type,
    :id,
    :x,
    :y,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :map_type,
    :id,
    :x,
    :y,
    :z,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :map_type,
    :x,
    :y,
    :z,
  ].freeze

  # Overwrite this method to customize how maps are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(map)
  #   "Map ##{map.id}"
  # end
end
