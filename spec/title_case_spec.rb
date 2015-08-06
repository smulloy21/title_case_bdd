require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("damages").title_case()).to(eq("Damages"))
  end
  it("capitalizes the first letter of every word") do
    expect(("true detective").title_case()).to(eq("True Detective"))
  end
  it("does not capitalize designated words") do
    expect(("parks and recreation").title_case()).to(eq("Parks and Recreation"))
  end
  it("does capitalize designated words if first word") do
    expect(("and you will know us").title_case()).to(eq("And You Will Know Us"))
  end
  it("lowercases all other letters") do
    expect(("AnD YOu To ThE wILL KnOw Us").title_case()).to(eq("And You to the Will Know Us"))
  end
  it("processes special characters") do
    expect(("I can't loan you 1984!").title_case()).to(eq("I Can't Loan You 1984!"))
  end
  it("processes unique case entries") do
    expect(("lay on mcduff (and o'malley)!").title_case()).to(eq("Lay on McDuff (and O'Malley)!"))
  end
end
