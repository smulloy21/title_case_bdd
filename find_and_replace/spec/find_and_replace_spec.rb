require('rspec')
require('find_and_replace.rb')

describe('String#find_and_replace') do
  it('returns ths string with instances of the first argument replaced by the second argument') do
    expect("I love Lucy".find_and_replace("Lucy", "Bob")).to(eq("I love Bob"))
  end
end
