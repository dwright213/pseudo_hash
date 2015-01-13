class MyHash
  define_method(:initialize) do
    @key_array = []
    @value_array = []
  end

  define_method(:store) do |key, value|
    @key_array.push(key)
    @value_array.push(value)
  end

  define_method(:store_key) do |element|
    @key_array.push(element)
  end

  define_method(:store_value) do |element|
    @value_array.push(element)
  end

  define_method(:fetch) do |key|
    item = @key_array.find_index(key)
    @value_array[item]
  end

  define_method(:values) do
    @value_array
  end

  define_method(:keys) do
    @key_array
  end

  define_method(:merge) do |other_hash|

   merged_hash = MyHash.new()

   hash_key_dump = self.keys()
   hash_value_dump = self.values()

   hash_key_dump.each do |key|
     merged_hash.store_key(key)
   end

   hash_value_dump.each do |value|
     merged_hash.store_value(value)
   end

   hash_key_dump = other_hash.keys()
   hash_value_dump = other_hash.values()

   hash_key_dump.each do |key|
     merged_hash.store_key(key)
   end

  hash_value_dump.each do |value|
    merged_hash.store_value(value)
  end
  merged_hash





  end
end
