class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    	t.string :name
    	t.integer :section_number
    	t.integer :song_id

      t.timestamps null: false
    end
  end
end
