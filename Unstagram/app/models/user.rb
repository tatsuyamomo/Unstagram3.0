class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :notes
  
  devise :database_authenticatable, :registerable,
         :validatable
end
