class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :person
      t.text :overview
      t.timestamps
    end
  end
end
