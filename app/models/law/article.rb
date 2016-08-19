class Article < Law

  attr_reader :paragraphs

  def initialize(title:, body: nil, paragraphs: [])
    @title = title
    @body = body
    @paragraphs = paragraphs
    validate!
  end

  def add_paragraph(paragraph)
    raise TypeError, "paragraph is not Law::Paragraph object" unless paragraph.is_a? Paragraph
    @paragraphs << paragraph
    paragraph.article = self
  end

  def to_s
    article = "#{title} #{body}"
    paragraphs.each { |p| article += "\n\t#{p}" } if paragraphs.any?
    article
  end

end