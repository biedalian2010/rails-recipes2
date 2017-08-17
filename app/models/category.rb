class Category < ApplicationRecord
  has_many :events
  
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
