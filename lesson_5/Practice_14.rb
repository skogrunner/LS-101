hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def colors_size(produce_hash)
  return_vals = []
  produce_hash.each_value do |produce|
    if produce[:type] == 'fruit'
      return_vals << produce[:colors].map(&:capitalize)
    elsif produce[:type] == 'vegetable'
      return_vals << produce[:size].upcase
    end
  end
  return_vals
end

p colors_size(hsh)
