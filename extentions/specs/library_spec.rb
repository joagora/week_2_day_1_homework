require("minitest/autorun")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test
  def setup
    @books =[
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
    @library = Library.new(@books)

  end
  def test_books
    assert_equal(@books, @library.books)
  end

  def test_show_book_found
    info = {
      title: "hobbit",
      rental_details: {
        student_name: "Roger",
        date: "01/04/18"
      }
    }
    assert_equal(info, @library.show_book("hobbit"))
  end

  def test_show_book_not_found
    assert_equal(nil, @library.show_book("alice_in_wonderland"))
  end
  #the one where the book exists
  def test_show_rental_details_found
    info = {
      student_name: "Roger",
      date: "01/04/18"
    }
    assert_equal(info, @library.show_rental_details("hobbit"))
  end
  #the one where the book is not found
  def test_show_rental_details_not_found
    assert_equal(nil, @library.show_rental_details("flying_over_cuckoo's_nest"))
  end

  #the one where the title is not there yet
  def test_add_new_book_not_found
    @library.add_new_book("harry_potter")
    assert_equal(4, @library.books.length)
  end

  #the one where the title is in there already
  def test_add_new_book_found
    @library.add_new_book("hobbit")
    assert_equal(3, @library.books.length)
  end

  def test_set_rental_details_tytle_found
    details = {
      title: "hobbit",
      rental_details: {
        student_name: "Amelia",
        date: "01/02/19"
      }
    }
    @library.set_rental_details("hobbit", "Amelia", "01/02/19")
    assert_equal(details, @library.show_book("hobbit"))
  end

  def test_set_rental_details_tytle_found
    details = {
      title: "hobbit",
      rental_details: {
        student_name: "Amelia",
        date: "01/02/19"
      }
    }
    @library.set_rental_details("hobbit", "Amelia", "01/02/19")
    assert_equal(details, @library.show_book("hobbit"))
  end
end
