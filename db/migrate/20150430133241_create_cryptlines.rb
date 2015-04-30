class CreateCryptlines < ActiveRecord::Migration
  def change
  	     create_table :cryptlines do |t|
         t.string :crypt
  end
end
end
