class ProductSerializer
  def self.serialize(product)

    # start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + post.id.to_s + ', '
    serialized_product += '"title": "' + post.title + '", '
    serialized_product += '"description": "' + post.description + '", '

    # the author association can also be represented in JSON
    serialized_product += '"author": {'
    serialized_product += '"name": "' + post.author.name + '"}'

    # and end with the close brace
    serialized_product += '}'
  end
end
