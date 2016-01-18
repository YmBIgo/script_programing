class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # association
  has_many :messages

  def full_profile?
    family_name? && first_name? && grade? && age? && introduce_text?
  end

end
