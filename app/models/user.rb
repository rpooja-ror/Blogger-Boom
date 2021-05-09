class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable

  
  def is_admin?
      role_id == 0
  end

  def is_autho?
      role_id == 1
  end

  def is_commentor?
      role_id == 2
  end
  
  def can_edit_destroy(user_id)
    is_admin? || id == user_id
  end
end
