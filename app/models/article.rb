class Article < ActiveRecord::Base
  include Bootsy::Container
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  acts_as_ordered_taggable
  validates :content, :title, presence: { message: 'Completa este campo' }
end
