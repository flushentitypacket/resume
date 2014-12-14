class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.text :value
      t.boolean :is_current

      t.timestamps
    end
  end
end
