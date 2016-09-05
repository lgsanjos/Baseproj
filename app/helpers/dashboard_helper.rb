module DashboardHelper 
  def box_simple(title, total_variation, positive, sub_title1, sub_title2, value1, value2, header_color: 'hgreen')
    render partial: 'box_simple', locals: {
      header_color: header_color,
      title: title,
      total_variation: total_variation,
      is_positive: positive,
      sub_title1: sub_title1,
      sub_title2: sub_title2,
      value1: value1,
      value2: value2
    }
  end

  def render_currency_box(title, total_variation, positive, currency_code, currency_value)
    box_simple(title, total_variation, positive, 'BRL', currency_code, 'R$ 1,00', currency_value, header_color: 'hgreen')
  end

  def render_index_box(index_name, percent_variation, positive, current_value, variation)
    title = positive ? 'Valorização' : 'Desvalorização'
    box_simple(index_name, percent_variation, positive, 'Valor', title, current_value, variation, header_color: 'hviolet')
  end

  def render_stock_box(stock_name, total_variation, positive, current_value, variation)
    title = positive ? 'Valorização' : 'Desvalorização'
    box_simple(stock_name, total_variation, positive, 'Valor', title, current_value, variation, header_color: 'hyellow')
  end

end
