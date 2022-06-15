module Alphabetable

  def a_final
    shift_key
    Hash[@alphabet.zip(@alphabet.rotate(@shift[:A]))]
  end
  def b_final
    shift_key
     Hash[@alphabet.zip(@alphabet.rotate(@shift[:B]))]
  end
  def c_final
    shift_key
    Hash[@alphabet.zip(@alphabet.rotate(@shift[:C]))]
  end
  def d_final
    shift_key
    Hash[@alphabet.zip(@alphabet.rotate(@shift[:D]))]
  end

  def reverse_a
    a_final.invert
  end

  def reverse_b
    b_final.invert
  end

  def reverse_c
    c_final.invert
  end

  def reverse_d
   d_final.invert
  end
end
