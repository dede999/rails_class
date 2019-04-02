class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :c_number
      t.string :email
      t.date :b_day

      t.timestamps
    end
  end
end
