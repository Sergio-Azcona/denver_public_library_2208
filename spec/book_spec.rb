require './lib/book'

RSpec.describe Book do
  let(:book) { Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"}) }

  it 'should exist as a class with a title attribute' do
    expect(book).to be_an_instance_of Book
    expect(book.title).to eq("To Kill a Mockingbird")
  end
  
  it 'returns the authors full name in one string by combining the name attributes' do 
    expect(book.author_first_name).to eq("Harper")
    expect(book.author_last_name).to eq("Lee")
    expect(book.author).to eq("Harper Lee")

  end
  
  it 'returns the publication year as an integer which is extracted from the #publication_date attribute string' do
    expect(book.publication_date).to eq("July 11, 1960")
    expect(book.publication_year).to eq(1960)
  end
end