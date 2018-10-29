class ProjectMeeting < ApplicationRecord
	has_attached_file :project_meeting_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	validates_attachment :project_meeting_photo, presence: true
 	do_not_validate_attachment_file_type :project_meeting_photo

 	# validates_attachment :avatar, :presence => true,
  #  :content_type => { :content_type => "image/jpg" },
  #  :size => { :in => 0..10.kilobytes }
end
