class CreateTagposts < ActiveRecord::Migration
  def change
    create_table :tagposts do |t|
      t.references :post
      t.references :tag

      t.timestamps
    end
  end
end
