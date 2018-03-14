class Documento < ApplicationRecord
    mount_uploader :file, FileUploader
end
