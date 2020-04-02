class CreateProgressions < ActiveRecord::Migration[6.0]
  def change
    create_table :progressions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
