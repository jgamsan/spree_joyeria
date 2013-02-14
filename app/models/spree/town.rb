class Spree::Town < ActiveRecord::Base
  attr_accessible :name, :state_id
  belongs_to :states, :class_name => "Spree::States"
end