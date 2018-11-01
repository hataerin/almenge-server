class CreateSessionAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :session_attendances do |t|

    	t.integer :session_info_id
    	t.integer :user_id
    	t.integer :session_attendance
    	t.integer :late

      t.timestamps
    end
  end
end
