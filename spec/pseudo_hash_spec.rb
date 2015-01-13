require ("rspec")
require ("pseudo_hash")
require ("pry")

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end
  describe("#fetch") do
    it("retrieves a stored value by its key even if there's a bunch of key/value pairs") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("panther", "lithe")
      test_hash.store("ham", "delicious")
      test_hash.store("ballet", "so classy")
      test_hash.store("lamborghini", "super fast")
      expect(test_hash.fetch("ham")).to(eq("delicious"))
    end
  end
  describe("#values") do
    it("retrieves a stored value by its key even if there's a bunch of key/value pairs") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("panther", "lithe")
      test_hash.store("ham", "delicious")
      test_hash.store("ballet", "so classy")
      test_hash.store("lamborghini", "super fast")
      expect(test_hash.values).to(eq(["cute", "lithe", "delicious", "so classy", "super fast"]))
    end
  end
  describe("#keys") do
    it("retrieves all keys from MyHash") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("panther", "lithe")
      test_hash.store("ham", "delicious")
      test_hash.store("ballet", "so classy")
      test_hash.store("lamborghini", "super fast")
      expect(test_hash.keys).to(eq(["kitten", "panther", "ham", "ballet", "lamborghini"]))
      end
    end

   describe("#merge") do
     it("merges two MyHash objects and outputs both keys and values") do
       test_hash = MyHash.new()
       test_hash.store("kitten", "cute")
       test_hash.store("panther", "lithe")
       test_hash.store("ham", "delicious")
       test_hash.store("ballet", "so classy")
       test_hash.store("lamborghini", "super fast")

       test_hash2 = MyHash.new()
       test_hash2.store("swingset", "fun")
       test_hash2.store("programming class", "early")

       new_hash = test_hash.merge(test_hash2)

       expect(new_hash.fetch("swingset")).to(eq("fun"))

     end
   end
end
