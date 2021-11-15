class Ad < ApplicationRecord
    mount_uploader :cl_image, CloudinaryImageUploader
end
