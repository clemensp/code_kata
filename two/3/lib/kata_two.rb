class KataTwo

  def self.chop(int, array_of_int)
    i = -1
    length = array_of_int.length

    if length == 1
      i = 0 if array_of_int[0] == int
    elsif length > 1
      first_int = array_of_int[0]
      last_int = array_of_int[length-1]

      if first_int == int
        i = 0
      elsif last_int == int
        i = length-1 
      else
        mid_index = length/2
        mid_int = array_of_int[mid_index]
        if mid_int > int
          sub_index = chop(int, array_of_int[0...mid_index])
          i = sub_index if sub_index != -1
        else
          sub_index = chop(int, array_of_int[mid_index...length]) 
          i = sub_index + mid_index if sub_index != -1
        end
      end
    end
    i
  end
end
