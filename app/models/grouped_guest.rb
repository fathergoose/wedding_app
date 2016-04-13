class GroupedGuest < ActiveRecord::Base
  belongs_to :group
  belongs_to :guest
end
