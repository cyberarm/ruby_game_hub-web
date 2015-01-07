class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_length_of :username, minimum: 3, maximum: 15
  validates_format_of :username, with: /\A\w+\z/, message: "is invalid (Only letters and numbers)"

  has_many :activities, dependent: :destroy
  has_many :comrades, dependent: :destroy
  # has_many :inverse_comrades, through: :comrades, primary_key: :comrade_id, dependent: :destroy
  has_many :played_withs, dependent: :destroy

  before_destroy do
    Comrade.where("comrade_id = #{self.id}").each {|e| e.destroy}
  end
end
