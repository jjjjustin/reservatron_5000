class Room < ActiveRecord::Base
  attr_accessor :poster_image_file_name
  attr_accessor :poster_image_content_type
  attr_accessor :poster_image_file_size
  attr_accessor :poster_image_updated_at

  has_many :meetings
  has_attached_file :image,
                    :storage => :s3,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :bucket => 'reservatron',
                    :url => ":s3_domain_url",
                    :path => '/:class/:attachment/:id_partition/:style/:filename',
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end

