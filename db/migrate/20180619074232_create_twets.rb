class CreateTwets < ActiveRecord::Migration[5.1]
  def change
    create_table :twets do |t|
      t.text :content
    end
  end
end
