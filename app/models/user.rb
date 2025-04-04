# email:string
# password_digest:string
#
#password:string virtual attribute
#password_conifirmation:string virtual



class User < ApplicationRecord
  has_secure_password

  validates :email ,presence: true 

end  
