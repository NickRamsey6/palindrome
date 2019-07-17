require('rspec')
require('palindrome')

describe('String#palindrome?') do
  it('will return true if the phrase is a palindrome') do
    expect("UFO tofu".palindrome?()).to(eq(true))
  end
end
