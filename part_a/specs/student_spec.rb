require('minitest/autorun')
require_relative('../student.rb')


class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("John", "E23")
    assert_equal("John", student.name)
  end

  def test_cohort
    student = Student.new("John", "E23")
    assert_equal("E23", student.cohort)
  end

  def test_set_name
    student = Student.new("John", "E23")
    student.set_name("Digory")
    assert_equal("Digory", student.name)
  end

  def test_set_cohort
    student = Student.new("John", "E23")
    student.set_cohort("E21")
    assert_equal("E21", student.cohort)
  end

  def test_student_talk
    student = Student.new("John", "E23")
    assert_equal("I can talk!", student.talk)
  end

  def test_favourite_language
    student = Student.new("John", "E23")
    assert_equal("I love Ruby", student.favourite_language("Ruby"))
  end



end
