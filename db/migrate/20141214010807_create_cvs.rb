class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.text :value
      t.timestamp :version

      t.timestamps
    end
  end
end
