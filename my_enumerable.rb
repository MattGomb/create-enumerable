module MyEnumerable
    def any?
      each { |a| return true if yield a }
      false
    end

    def all?
      each { |a| return false unless yield a }
      true
    end

    def filter
      result = []
      each { |a| result << a if yield a }
      result
    end
  end