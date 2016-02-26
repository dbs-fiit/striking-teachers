class CreateBasicModel < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
    end

    create_table :teachers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :faculty, null: false
      t.timestamps null: false
    end

    add_index :teachers, :email, unique: true
    add_index :faculties, :name, unique: true
    add_foreign_key :teachers, :faculties
  end
end
