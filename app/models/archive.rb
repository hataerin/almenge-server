class Archive < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
end
