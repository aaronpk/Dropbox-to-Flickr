module Base58
  def self.encode(n)
    alphabet = %w(
      1 2 3 4 5 6 7 8 9
      a b c d e f g h i
      j k m n o p q r s
      t u v w x y z A B
      C D E F G H J K L
      M N P Q R S T U V
      W X Y Z
    )

    return alphabet[0] if n == 0

    result = ''
    base = alphabet.length

    while n > 0
      remainder = n % base
      n = n / base
      result = alphabet[remainder] + result
    end
    result
  end
end
