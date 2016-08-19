class Paragraph < Law

  attr_accessor :article
  attr_reader :lines

  def initialize(title:, body: nil, lines: [])
    @title = title
    @body = body
    @lines = lines
    validate!
  end

  def to_s
    paragraph = "#{title} #{body}"
    lines.each { |l| paragraph += "\n\t\t#{l}" } if lines.any?
    paragraph
  end

  def add_line(line)
    raise TypeError, "line is not Law::Line object" unless line.is_a? Line
    @lines << line
    line.paragraph = self
  end
end