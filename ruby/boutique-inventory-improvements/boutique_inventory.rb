class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |raw_item| OpenStruct.new(raw_item) }
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    items.sum { |item| item.quantity_by_size.values.sum }
  end
end
