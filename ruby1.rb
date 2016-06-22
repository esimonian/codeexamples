# Determine if a sentence is a pangram
class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    ans = ['a'..'z'] - str.downcase.chars
    ans.empty?
  end
end

# Find the difference between the sum of the squares 
# and the square of the sums of the first N natural numbers
class Squares
  VERSION = 2

  def initialize(num)
    @num = (0..num)
  end

  def square_of_sum
    @num.reduce(:+)**2
  end

  def sum_of_squares
    @num.reduce { |a, e| a + e**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

# Pling, Plang, Plong
class Raindrops
  VERSION = 1

  def self.convert(n)
    answer = ''
    answer += 'Pling' if n % 3 == 0
    answer += 'Plang' if n % 5 == 0
    answer += 'Plong' if n % 7 == 0
    return n.to_s if answer.empty?
    answer
  end
end

# Calculate the date that someone turned or will celebrate their 1 Gs anniversary.
class Gigasecond
  VERSION = 1
  @gigasecond = 10**9

  def self.from(bday)
    bday + @gigasecond
  end
end

# Given a DNA strand it returns its RNA complement (per RNA transcription).
class Complement
  VERSION = 3

  def self.of_dna(dna)
    raise ArgumentError, 'Not valid DNA' if dna =~ /[^GCTA]/
    dna.tr('GCTA', 'CGAU')
  end
end

# Calculate the Hamming difference between two DNA strands
class Hamming
  VERSION = 1

  def self.compute(string1, string2)

    string1 = string1.split("")
    string2 = string2.split("")

    if string1.length != string2.length
      raise ArgumentError, "Unequal lengths"
    else
    answer = string1.zip(string2).map{|x, y| x==y}
    answer.count(false)
    end
  end
end


