class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_one :profile

	after_create :create_profile

 private

 def create_profile
 	p "$$$$$$"
 	p self
 	p "$$$$$$$$$$"
      self.profile = Profile.new
      self.profile.name = "John"
      self.profile.age = 99
      self.profile.hometown = "Las Vegas"
      self.profile.save;
      p "%%%%%"
      p self.profile
      p '%%%%'
      p self
      "*****************"
      p self.profile.name
      #according there is a link between your profiles object and user
 end

end
