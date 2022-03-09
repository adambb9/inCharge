class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  LANG_CATEGORIES = ["ar", "de", "en", "es", "fr", "he", "it", "nl", "no", "pt", "ru", "se", "ud", "zh"]
  COUNTRY_CATEGORIES = ["ar", "de", "en", "es", "fr", "he", "it", "nl", "no", "pt", "ru", "se", "ud", "zh"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  has_one_attached :photo

  has_many :subscriptions, dependent: :destroy
  has_many :tiles, through: :subscriptions
end
