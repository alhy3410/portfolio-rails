class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :refernce
      t.integer :project_id
    end
  end
end
