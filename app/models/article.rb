class Article < ActiveRecord::Base
  include Bootsy::Container
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
end
