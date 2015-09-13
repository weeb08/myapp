class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
	t.string :name
	t.string :thumburl
	t.string :summary
      t.timestamps
    end
  end
end
