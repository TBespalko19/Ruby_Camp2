require "minitest/autorun"

class Rtest < Minitest::Test
	
	def do_magic(str)
    result = [] # формуємо пустий масив
    str.chars.each_with_index do |v, i| # для кожного елемента str визивається два аргументи - самий елемент і його індекс
    letters_count = str.length.to_i - i # визначаємо скільки раз повторюється буква
    result << (v * letters_count).capitalize # створюємо новий масив додаючи сформовану фразу з першою великою літерою
    end

    result.join('-') # повертаємо створену строку відділену відокремлювачем "-"
  end

  def test_empty
    assert_equal "", do_magic("")
  end

  def test_one_letter
    assert_equal "A", do_magic("a")
  end

  def test_two_letters
    assert_equal "Aa-B", do_magic("ab")
  end

  def test_capital_letters
    assert_equal "Tttt-Eee-Ss-T", do_magic("teSt")
  end

  def test_long_string
    assert_equal "Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa-Bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb-Ccccccccccccccccccccccccccccccccccccccccc-Dddddddddddddddddddddddddddddddddddddddd-Eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-Ffffffffffffffffffffffffffffffffffffff-Ggggggggggggggggggggggggggggggggggggg-Hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh-Iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii-Jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj-Kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk-Llllllllllllllllllllllllllllllll-Mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-Oooooooooooooooooooooooooooooo-Fffffffffffffffffffffffffffff-Dddddddddddddddddddddddddddd-Fffffffffffffffffffffffffff-Dddddddddddddddddddddddddd-Lllllllllllllllllllllllll-Ffffffffffffffffffffffff-Sssssssssssssssssssssss-Llllllllllllllllllllll-Ddddddddddddddddddddd-Ffffffffffffffffffff-Sssssssssssssssssss-Pppppppppppppppppp-Rrrrrrrrrrrrrrrrr-Oooooooooooooooo-Wwwwwwwwwwwwwww-Eeeeeeeeeeeeee-Ooooooooooooo-Rrrrrrrrrrrr-Ooooooooooo-Wwwwwwwwww-Eeeeeeeee-Rrrrrrrr-Wwwwwww-Eeeeee-Ooooo-Rrrr-Www-Ee-R", do_magic("abcdefghijklmofdfdlfsldfsproweorowerweorwer")
  end    
end

# do_magic("abcd") # "Aaaa-Bbb-Cc-D"
# do_magic("a")    # "A"
# do_magic("ab")   # "Aa-B"
# do_magic("teSt") # "Tttt-Eee-Ss-T"