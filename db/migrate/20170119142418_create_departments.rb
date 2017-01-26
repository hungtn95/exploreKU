class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.references :building, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
