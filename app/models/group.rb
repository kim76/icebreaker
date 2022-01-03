class Group < ApplicationRecord
    validates :group_code, presence: true
end
