class Story < ActiveRecord::Base
    mount_uploader :headerimg, HeaderimgUploader
end
