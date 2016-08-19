class Line < Law

  attr_accessor :paragraph

  def to_s
    "#{title} #{body}"
  end
end