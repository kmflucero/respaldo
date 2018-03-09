class Sale < ApplicationRecord
validates :cod, uniqueness: true
validates :detail, presence: true
validates :category, inclusion: {in: %W{uno dos tres cuatro cinco}}
validates :value, :discount, numericality: {
	great_than_or_equal_tp: 0,
	only_integer:true
}
validates :discount, numericality: { less_than_or_equal_to: 40}
end
