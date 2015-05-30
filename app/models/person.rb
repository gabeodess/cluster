class Person < ActiveRecord::Base
  
  # ==============
  # = Attributes =
  # ==============
  store_accessor :address, :street1, :street2, :city, :state, :zip
  
  # ================
  # = Associations =
  # ================
  belongs_to :cluster
  
  # ===============
  # = Validations =
  # ===============
  validates_presence_of :name, :cluster
  
end
