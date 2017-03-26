class Product < ApplicationRecord

validates :title, :description, :image_url, presence: true #проверяет содержание в полях название,
#описание и ссылка на картинку
validates :price, numericality: {greater_than_or_to: 0.01}#проверяет чтобы введеная цена была 
#больше 0,01
validates :title, uniqueness: true #проверяет что бы каждое название было уникально

validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i,
message: 'URL must be in format GIF, JPG, PNG.'	
}# проверяет правильность расширения картинки

end
