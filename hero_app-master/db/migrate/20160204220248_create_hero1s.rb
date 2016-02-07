class CreateHero1s < ActiveRecord::Migration
  def change
    create_table :hero1s do |t|
      t.references :User, index: true
      t.date :day

      t.timestamps
    end
  end
end
