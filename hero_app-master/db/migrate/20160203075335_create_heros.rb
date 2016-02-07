class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.date :day
      t.references :User, index: true

      t.timestamps
    end
  end
end
