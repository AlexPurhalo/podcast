class Episode < ActiveRecord::Base
  belongs_to :podcast

  has_attached_file :episode_thumbnail, style:{ medium: '210x260#' }
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\Z/
end
