class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :parent
      t.text :links
      t.text :members

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
