class KataTwo

  def self.chop(int, array_of_int)
    i = -1
    array_of_int.each.with_index do |elem, index|
      if elem == int
        i = index
        break
      end
    end
    i
  end
end
