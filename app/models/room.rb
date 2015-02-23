class Room < ActiveRecord::Base
  attr_accessor :poster_image_file_name
  attr_accessor :poster_image_content_type
  attr_accessor :poster_image_file_size
  attr_accessor :poster_image_updated_at

  has_many :meetings
  has_attached_file :image,
                    :url =>':s3_domain_url',
                    :path => '/:class/:attachment/:id_partition/:style/:filename',
                    :styles => { :medium => "300x300>",
                    :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end

