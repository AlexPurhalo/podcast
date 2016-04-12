class Podcast < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :episodes

  has_attached_file :thumbnail, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

end
