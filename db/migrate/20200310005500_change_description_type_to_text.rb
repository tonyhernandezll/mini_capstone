class ChangeDescriptionTypeToText < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :description, :text
  end
e