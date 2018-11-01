class CreateProjectProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :project_profiles do |t|

    	t.string :project_name

    	t.timestamps
    end
  end
end
