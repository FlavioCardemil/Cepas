class Wine < ApplicationRecord
    has_many :assemblies, dependent: :destroy
    has_many :strains, through: :assemblies

    accepts_nested_attributes_for :assemblies, reject_if: :all_blank

    has_many :enologist_wines, dependent: :destroy
    has_many :enologists, through: :enologist_wines

    accepts_nested_attributes_for :enologist_wines, reject_if: :all_blank

end
