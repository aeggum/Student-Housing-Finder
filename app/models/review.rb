class Review < ActiveRecord::Base
  attr_accessible :body, :flag, :helpfulness, :rating, :user_id
  belongs_to :listing
  belongs_to :user
  after_initialize :default_values

  # Line below was throwing an error. Commented it out for now.
  #profanity_filter! :review_body

  validates :body,        :presence => true
  validates :rating,             :presence => true
  validates :listing_id,            :presence => true
  validates :user_id,            :presence => true

  def default_values
    self.flags ||= 0
    self.helpfulness ||= 0
  end

  default_scope :order => 'reviews.created_at DESC'

  def self.admin_review_search(search)
    if search
      where('review_body LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
