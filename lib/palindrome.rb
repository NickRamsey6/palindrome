require('pry')

class String
  def palindrome?()
    # delete!("")
    tr!("-!,\"\':;=+<>?_[]{}*#$%()&^.@ ", "")
    downcase!()
    if self == self.reverse()
      return true
    end
    false
  end

  def file_stuff()
    file = File.open(self)
    file_data = file.read
    file.close
    file_data.chomp.palindrome?()
  end
end
p "Enter a file to determine if it contains a palindrome. DO NOT use quotes."
if gets.chomp.file_stuff()
  p "Your phrase is a palindrome."
else
  p "Your phrase is not a palindrome."
end
