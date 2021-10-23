require './lib/library'
describe Library do
  it 'can find a specific book' do
    library = Library.new
    p " library object = #{library}"
    find_book = library.find_book('Learn Ruby The Hard Way')
    p " find book method  = #{find_book} "

    expect(find_book[:title]).to eq 'Learn Ruby The Hard Way'
  end   

  it 'can add a new book' do
    library = Library.new
    addbook = library.add_book({ :title =>'hello', :author => 'me', :subject =>'chem'})
    p addbook
    find_book = library.find_book('hello')
    expect(find_book[:title]).to eq 'hello' 


  end

  it 'can remove a book' do
    library = Library.new
    remove_books = library.remove_book('POODR')
    p remove_books
    
    expect(remove_books).not_to include 'POODR' 

  end

  it 'can list all the books on a specific subject' do
  end
end
