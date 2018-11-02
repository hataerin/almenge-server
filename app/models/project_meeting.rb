class ProjectMeeting < ApplicationRecord
	belongs_to :project_profile
	after_save :update_project_absence


	# has_attached_file :project_meeting_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 # 	validates_attachment :project_meeting_photo, presence: true
 # 	do_not_validate_attachment_file_type :project_meeting_photo

	# validates_attachment :avatar, :presence => true,
  #  :content_type => { :content_type => "image/jpg" },
  #  :size => { :in => 0..10.kilobytes }

  def update_project_absence
    absentee.strip!
  	absentee_list = absentee.split(",")

  	absentee_list.each do |user_name|
  		user = User.find_by(name: user_name)
      if !user.nil?

  		  user.project_absence += 1
  		  user.save
      end
    end
  end



	def update_unattendance(user_names)
  	#user_names-> '하태린, 하태'

  		user_names_list = user_names.split(",")
  		#user_names_list -> '[하태태린', '하태']
  		#.trim, "태린".gsub!


  		user_names_list.each do |user_name|
    		user = User.find_by(name: user_name)
    		user.project_absence += 1
    		user.save
  		end
	end



end
