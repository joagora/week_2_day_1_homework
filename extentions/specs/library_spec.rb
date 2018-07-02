require("minitest/autorun")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test
  def test_books
    books =[
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "everything_is_illuminated",
        rental_details: {
          student_name: "Barry",
          date: "05/12/17"
        }
      },
      {
        title: "hobbit",
        rental_details: {
          student_name: "Roger",
          date: "01/04/18"
        }
      }
    ]
    library = Library.new
    assert_equal(books, library.books)
  end

  def test_show_book_found
    info = {
      title: "hobbit",
      rental_details: {
        student_name: "Roger",
        date: "01/04/18"
      }
    }
    library = Library.new
    assert_equal(info, library.show_book("hobbit"))
  end

  def test_show_book_not_found
    library = Library.new
    assert_equal(nil, library.show_book("alice_in_wonderland"))
  end
  #the one where the book exists
  def test_show_rental_details_found
    info = {
      student_name: "Roger",
      date: "01/04/18"
    }
    library = Library.new
    assert_equal(info, library.show_rental_details("hobbit"))
  end
  #the one where the book is not found
  def test_show_rental_details_not_found
    library = Library.new
    assert_equal(nil, library.show_rental_details("flying_over_cuckoo's_nest"))
  end

end
