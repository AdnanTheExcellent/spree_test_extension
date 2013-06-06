class MgxOneTwo < ActiveRecord::Migration
  def change
    create_table :purchased_addons do |t|
      t.integer :order_id
      t.integer :variant_id
      t.integer :line_item_id
      t.integer :quantity, :null => false
      t.decimal  :price, :precision => 8, :scale => 2, :null => false

      t.timestamps
    end

    create_table :material_weights do |f|
      f.decimal :weight, :precision => 10, :scale => 4
      f.string :name
      f.integer :material_dimension_id
    end
    
    create_table :material_dimensions do |f|
      f.decimal :length, :precision => 6, :scale => 3
      f.decimal :width, :precision => 6, :scale => 3
      f.integer :quantity
      f.text :description
    end

    create_table :metadata do |t|
      t.integer :line_item_id
      t.string :key
      t.string :value
      t.timestamps
    end

    create_table :uploaded_files do |t|
      t.integer :line_item_id
      t.text :name
      t.string :filepath
      t.boolean :verified_to_s3
      t.timestamp :deleted_at
      t.timestamps
    end

    create_table :product_page_contents do |t|
      t.text :product_blurb
      t.string :img_name
      t.integer :img_width
      t.integer :img_height
      t.text :product_options
      t.text :product_faqs
      t.text :product_specs
      t.text :product_templates
      t.text :title_classes
      t.integer :product_id
    end

    create_table :faq_questions do |f|
      f.text :question
      f.text :answer
      f.integer :ordering
      f.integer :faq_category_id
    end

    create_table :faq_categories do |f|
      f.text :breadcrumbs_display
      f.text :sidebar_display
      f.string :content_section
      f.integer :ordering
    end

    create_table :turnaround_times do |t|
      t.datetime :original_ship_date
      t.datetime :current_ship_date
      t.integer :order_id
    end

    create_table :comments do |t|
      t.integer :order_id
      t.text :body
      t.timestamp
    end

    create_table :guest_uploads_infos do |t|
      t.integer :uploaded_file_id
      t.text :name
      t.text :email
      t.text :comments
      t.text :file_name
      t.text :file_url
      t.text :file_size
    end

    create_table :production_upcharges do |f|
      f.integer :product_id
      f.decimal :percent_upcharge, :precision => 8, :scale => 4
      f.integer :production_days
      f.string :quantity_bracket
      f.timestamps
      f.datetime :deleted_at
    end
    
    create_table :shipment_units do |f|
      f.integer :line_item_id
      f.integer :shipment_id
      f.integer :quantity
      f.decimal :price, :precision => 8, :scale => 4
      f.decimal :production_upcharge_amount, :precision => 8, :scale => 4
      f.integer :production_days
      f.integer :production_upcharge_id
      f.timestamps
    end

    create_table :time_of_days do |t|
      t.string "name"
      t.string "presentation"
      t.integer "hour"
    end
  
    change_table :spree_shipments do |f|
      f.integer :shipping_days
      f.datetime :original_delivery_date
      f.datetime :current_delivery_date
      f.string :original_delivery_date_string, :limit => 3
      f.string :zipcode, :limit => 10
      f.string :quote_state
      f.integer :time_of_day_id
    end

    change_table :spree_products do |t|
      t.integer :parent_product_id
      t.boolean :is_priced_per_unit
      t.integer :quantity_opttype_id
      t.integer :dimension_opttype_id
      t.integer :weight_opttype_id
      t.integer :turnaround_opttype_id
    end

    change_table :spree_option_values do |t|
      t.integer :material_dimension_opttype_id
      t.integer :material_weight_opttype_id
    end

    change_table :spree_line_items do |t|
      t.integer :turnaround_days
      t.text :description
    end
  end
end
