class CreateArchives < ActiveRecord::Migration[5.0]
  def change
    create_table :archives do |t|
    	t.string :archive_title
    	t.string :archive_content
    	t.datetime :archive_upload_at
    	t.string :attachment

      t.timestamps
    end
  end
end
