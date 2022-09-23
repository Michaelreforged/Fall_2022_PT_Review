class CreateMarathons < ActiveRecord::Migration[7.0]
  def change
    create_table :marathons do |t|
      t.string :name
      t.string :distance
      t.string :time
      t.datetime :date

      t.timestamps
    end
  end
end
