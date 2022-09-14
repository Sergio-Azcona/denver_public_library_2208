
require './lib/book'
require './lib/author'

RSpec.describe Author do
  let(:charlotte_bronte) { Author.new({first_name: "Charlotte", last_name: "Bronte"}) }
  let(:jane_eyre) { Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"}) }
  let(:villette) { Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Villette", publication_date: "1853"}) }
  
  it 'is a class with with an empty book array' do
    expect(charlotte_bronte).to be_a Author
    expect(charlotte_bronte.books).to eq([])  
  end
  
  it "retuns a one string of the author's name ny combining the first and last name attributes" do
    expect(charlotte_bronte.first_name).to eq('Charlotte')
    expect(charlotte_bronte.last_name).to eq('Bronte')
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  # charlotte_bronte.books
  it "adds books to an Author's catalog as the author publishes them" do
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    # require 'pry';binding.pry
    expect(charlotte_bronte.books).to eq(jane_eyre)  
    villette = charlotte_bronte.write("Villette", "1853")
    expect(charlotte_bronte.books).to eq([jane_eyre,villette]) 
  end

  # jane_eyre.title


  # charlotte_bronte.books

end