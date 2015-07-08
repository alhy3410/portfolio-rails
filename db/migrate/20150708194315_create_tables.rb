class CreateTables < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.column :name, :string
      t.column :description, :string
    end

    create_table :projects do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :category_id, :integer
    end
  end
end
