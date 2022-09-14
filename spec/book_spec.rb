require './lib/book'

RSpec.describe Book do
  let(:book) { Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"}) }

  it 'should exist as a class with a title, author, and publication year attributes' do
    expect(book).to be_an_instance_of Book
    expect(book.title).to eq("To Kill a Mockingbird")
    expect(book.author).to eq("Harper Lee")
    expect(book.publication_year).to eq(1960)
  end
end