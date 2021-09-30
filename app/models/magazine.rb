class Magazine < ApplicationRecord
    has_many :enologist_magazines
    has_many :enologists, through: :enologist_magazines

    accepts_nested_attributes_for :enologist_magazines, reject_if: :all_blank

end
