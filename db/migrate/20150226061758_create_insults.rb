class CreateInsults < ActiveRecord::Migration
  def change
    create_table :insults do |t|
      t.string "text"
      t.integer "user_id"
      t.boolean "answered", :default => false	
      t.timestamps null: false
    end
    add_index("insults", "text")
  end
end
