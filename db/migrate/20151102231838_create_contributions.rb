class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
