class UserQuestionAnswer < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :questions do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.timestamps
    end

    create_table :answers do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :question_id
      t.timestamps
    end
  end
end
