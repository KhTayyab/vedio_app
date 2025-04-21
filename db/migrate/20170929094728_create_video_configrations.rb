class CreateVideoConfigrations < ActiveRecord::Migration[5.0]
  def change
    create_table :video_configrations do |t|
      t.string 			:product_sku
      t.string 			:shop_name
      t.attachment 	:avatar
      t.timestamps
    end
  end
end
