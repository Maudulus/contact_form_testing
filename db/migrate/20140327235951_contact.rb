class Contact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :subject
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
