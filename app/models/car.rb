class Car < ApplicationRecord
    validates :car_registered_place, format: { with: /\A[一-龥]+\z/}, length: { minimum: 1, maximum: 10 }
    validates :car_model_number, format: { with: /\A[0-9]+\z/}
    validates :car_kana, format: { with: /\A[ぁ-んー－]+\z/}
    validates :car_number, format: { with: /\A[0-9]+\z/}
    validates :car_registered_place_second, format: { with: /\A[一-龥]+\z/}, length: { minimum: 1, maximum: 10 }
    validates :car_model_number_second, format: { with: /\A[0-9]+\z/}
    validates :car_kana_second, format: { with: /\A[ぁ-んー－]+\z/}
    validates :car_number_second, format: { with: /\A[0-9]+\z/}
end
