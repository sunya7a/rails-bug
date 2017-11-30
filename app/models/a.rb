class A < ApplicationRecord
  after_create :associate_w_all_bs

  has_many :as_bs, dependent: :destroy
  has_many :bs, through: :as_bs

  private

    def associate_w_all_bs
      B.all.each do |b|
        bs << b
      end
    end
end
