class Posts < ActiveRecord::Migration[5.2]
  def change
  	create_table :posts do |t|
  	t.string :location
  	t.string :url
  	t.string :description
  	t.timestamps
end
  end
end
