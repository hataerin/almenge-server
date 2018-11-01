class CreateProjectMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :project_meetings do |t|

    	t.integer :project_id
    	t.string :project_meeting_photo
    	t.string :absentee
    	t.text :project_meeting_memo
    	t.datetime :project_meeting_upload_at

      t.timestamps
    end
  end
end
