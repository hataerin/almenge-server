class CreateSessionInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :session_infos do |t|

    	t.datetime :session_datetime
    	t.string :session_place
    	t.string :session_activity
    	t.string :session_content

      t.timestamps
    end
  end
end
