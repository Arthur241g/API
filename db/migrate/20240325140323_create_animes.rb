class CreateAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :animes do |t|
      t.string :Title
      t.float :Rank
      t.string :Type
      t.integer :Episodes
      t.date :Aired
      t.float :Members
      t.string :Page_url
      t.string :image_url
      t.float :Score

      t.timestamps
    end
  end
end
