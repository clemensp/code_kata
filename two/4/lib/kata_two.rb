class KataTwo

  def self.chop(int, array_of_int)
    i = -1
    min_index = 0
    max_index = array_of_int.length - 1

    while min_index <= max_index
      if array_of_int[min_index] == int
        i = min_index
        break
      elsif array_of_int[max_index] == int
        i = max_index
        break
      else
        mid_index = (max_index + min_index) / 2
        mid_int = array_of_int[mid_index]
        if mid_int < int
          mid_index == min_index ? break : min_index = mid_index
        else
          max_index == mid_index ? break : max_index = mid_index
        end
      end
    end
    i
  end
end
