class AddPostRefToEmployers < ActiveRecord::Migration
  def change
    add_reference :employers, :post, index: true, foreign_key: true
  end
end
