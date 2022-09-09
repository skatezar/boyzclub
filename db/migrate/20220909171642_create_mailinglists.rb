class CreateMailinglists < ActiveRecord::Migration[7.0]
  def change
    create_table :mailinglists do |t|

      t.timestamps
    end
  end
end
