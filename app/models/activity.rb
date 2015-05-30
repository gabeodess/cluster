class Activity < ActiveRecord::Base
  
  TYPES = %w( StudyCircle Devotional ChildrensClass JuniorYouthGroup )
  
  # ================
  # = Associations =
  # ================
  belongs_to :cluster
  
  # ===============
  # = Validations =
  # ===============
  validates_presence_of :name, :cluster, :type
  
end
