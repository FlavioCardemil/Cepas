class Enologist < ApplicationRecord
    has_many :enologist_magazines
    has_many :magazines, through: :enologist_magazines

    accepts_nested_attributes_for :enologist_magazines, reject_if: :all_blank

    has_many :enologist_wines
    has_many :wines, through: :enologist_wines

    accepts_nested_attributes_for :enologist_wines, reject_if: :all_blank

end
