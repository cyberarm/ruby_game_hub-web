class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_length_of :username, minimum: 3, maximum: 15
  validates_format_of :username, with: /\A\w+\z/, message: "is invalid (Only letters and numbers)"
end