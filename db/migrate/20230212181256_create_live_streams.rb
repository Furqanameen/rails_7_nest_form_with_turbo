class CreateLiveStreams < ActiveRecord::Migration[7.0]
  def change
    create_table :live_streams do |t|
      t.string :title
      t.date :start_time
      t.datetime :start_date
      t.integer :live_stream_product

      t.timestamps
    end
  end
end
