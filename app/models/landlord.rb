class Landlord < ActiveRecord::Base
  has_many :listings
  attr_accessible :name, :email, :website, :phone,
                  :address, :city, :state, :zip, :user_id, :verified
  before_create     :format_website
  before_validation :format_phone
  after_initialize  :default_values
  
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,        :presence => true,
                          :uniqueness => { :case_sensitive => false }
  validates :email,       :presence => true,
                          :format => { :with => email_regex },
                          :uniqueness => { :case_sensitive => false }
  
  #TODO: Will have to decide how to deal with the phone numbers.  They are stored as strings, so we have plenty of flexibility
  validates :phone,       :presence => true,
                          :uniqueness => { :case_sensitive => false }
  validates :city,        :presence => true
  validates :zip,         :presence => true
  
  validates_inclusion_of  :zip, 
                          :in => 53700..53800, #judging by: http://www.zip-codes.com/city/WI-MADISON.asp
                          :message => "must be in the Madison-area"
  validates_length_of :phone,       
                          :in => 7..10
  
  
  private 
    def default_values
      self.state = "Wisconsin"
    end
    
    def format_website
      unless self.website.empty? 
        if self.website.start_with?("http://") 
          self.website
        else
          self.website = self.website.insert(0, "http://")
        end
      else
        return nil
      end
    end
    
    
    
    def format_phone
      self.phone = self.phone.gsub(/\D/, '')
    end
end
