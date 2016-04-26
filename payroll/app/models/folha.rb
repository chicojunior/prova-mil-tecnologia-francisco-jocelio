class Folha < ActiveRecord::Base
	has_many :funcionarios, dependent: :destroy
	accepts_nested_attributes_for :funcionarios, reject_if: :all_blank, allow_destroy: true
end
