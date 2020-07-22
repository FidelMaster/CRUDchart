json.extract!  @api.map {|detail| {id: detail.total, display_description: detail.nombre }}
json.url product_url(@api, format: :json)
