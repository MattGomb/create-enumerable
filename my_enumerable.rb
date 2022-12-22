module MyEnumerable
  def all?
    @list.each { |a| return false unless yield(a) }
    true
  end

  def any?
    @list.each { |a| return true if yield(a) }
    false
  end

  def filter
    arr = []
    @list.each { |a| arr.push(a) if yield(a) }
    arr
  end
end