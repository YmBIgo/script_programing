class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # association
  has_many :messages

  validates :sex, length: {maximum: 3}

  paginates_per 10

  def full_profile?
    family_name? && first_name? && sex? && age? && introduce_text?
  end

end
