class CreateWords < ActiveRecord::Migration
  def change
      create_table :words do |t|
        t.string :words
      end
  end
end
