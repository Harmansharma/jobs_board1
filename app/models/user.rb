class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

   def self.from_google(from_google_params)
    user = User.find_by(email: from_google_params['email'])
    unless user
      user = User.create(email: from_google_params['email'],
                         uid: from_google_params['uid'],
                         provider: from_google_params['provider'],
                         password: Devise.friendly_token[0, 20])
    end
    end 

end