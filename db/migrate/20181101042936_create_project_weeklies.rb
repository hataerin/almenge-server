class CreateProjectWeeklies < ActiveRecord::Migration[5.0]
  def change
    create_table :project_weeklies do |t|
    	t.integer :project_week

      t.timestamps
    end
  end
end
