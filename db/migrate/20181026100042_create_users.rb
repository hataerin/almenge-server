class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

    
     	t.string :email,              null: false, default: ""
     	t.string :password_digest,    null: false, default: ""

    	#이름
    	t.string :name,               null: false
    	#생년월일
    	t.date :birthday,             null: false
    	#세션결석횟수
    	t.integer :session_absence
    	#플젝결석횟수
    	t.integer :project_absence
    	#지각비
    	t.integer :penalty
    	#소속프로젝트
    	t.integer :project_id,        null: false
    	#프로필사진
    	t.string :user_photo,         null: false


      t.timestamps
    end
  end
end
