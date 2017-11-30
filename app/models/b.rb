class B < ApplicationRecord
  has_many :as_bs
  has_many :as, through: :as_bs
end
