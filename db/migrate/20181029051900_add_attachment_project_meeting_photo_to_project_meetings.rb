class AddAttachmentProjectMeetingPhotoToProjectMeetings < ActiveRecord::Migration[5.0]
  def self.up
    change_table :project_meetings do |t|
      t.attachment :project_meeting_photo
    end
  end

  def self.down
    remove_attachment :project_meetings, :project_meeting_photo
  end
end
