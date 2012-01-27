class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  
  after_create :create_userfile_directory
  
  validates :username, presence: true
  
  def create_userfile_directory
    FileUtils.mkdir(File.join(Rails.root, 'public', 'system', 'userfiles', id.to_s))
  end
  
end
