class ResBoard < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    has_many :comments, dependent: :destroy
end
