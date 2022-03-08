class Member < ApplicationRecord
    validates :first_name, presence: true, format: { with: /\A[一-龥]+\z/}
    validates :family_name, presence: true, format: { with: /\A[一-龥]+\z/}
    validates :first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/}
    validates :family_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/}
    validates :birthday_year, presence: true
    validates :birthday_month, presence: true
    validates :birthday_day, presence: true
    validates :gender, presence: true
    validates :telephone_number_first, presence: true, format: { with: /\A[0-9]+\z/}
    validates :telephone_number_second, presence: true, format: { with: /\A[0-9]+\z/}
    validates :telephone_number_third, presence: true, format: { with: /\A[0-9]+\z/}
    validates :landline_number_first, presence: true, format: { with: /\A[0-9]+\z/}
    validates :landline_number_second, presence: true, format: { with: /\A[0-9]+\z/}
    validates :landline_number_third, presence: true, format: { with: /\A[0-9]+\z/}
    validates :post_code, presence: true, format: { with: /\A\d{7}\z/}
    validates :municipalities, presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
    validates :address, presence: true
end
