class KataTwo

  def self.chop(int, array_of_int)
    i = -1
    if array_of_int.size > 0 and 
      int >= array_of_int[0] and 
      int <= array_of_int[array_of_int.size-1]
      i = chop_section(int, array_of_int, 0, array_of_int.size-1)
    end
    i
  end

  def self.chop_section(int, array_of_int, min_index, max_index)
    i = -1
    min_int = array_of_int[min_index]
    max_int = array_of_int[max_index]
    if min_int == int
      i = min_index
    elsif max_int == int
      i = max_index
    elsif min_int < int and max_int > int and max_index - min_index > 0
      mid_index = (min_index + max_index) / 2 
      if mid_index != min_index and mid_index != max_index
        mid_int = array_of_int[mid_index]
        if mid_int < int
          i = chop_section(int, array_of_int, mid_index, max_index)
        else
          i = chop_section(int, array_of_int, min_index, mid_index)
        end
      end
    end
    i
  end
end
