class LawParser

  # * get articles from input
  def self.get_articles(law)
    # scan article numbers
    articles_no = law.scan(/^#{self::PREFIX[:title]}\S+\. /)
    # get content for articles
    raw_articles = law.split(/^#{self::PREFIX[:title]}\S+\. /)

    articles = []
    articles_no.each_with_index do |art_no, i|
      articles << Article.new(title: art_no.rstrip, body: raw_articles[i+1])
    end
    articles
  end

  # * get paragraphs from article
  def self.get_parapgraphs(article)
    # scan paragraph numbers
    paragraphs_no = article.body.scan(/^#{self::PREFIX[:paragraph]}\d+\. */)
    # get content for paragraphs
    raw_paragraphs = article.body.split(/^#{self::PREFIX[:paragraph]}\d+\. */)

    # strip body
    article.body.strip!

    # push paragraphs
    paragraphs_no.each_with_index do |par_no, i|
      article.add_paragraph(Paragraph.new(title: par_no.rstrip, body: raw_paragraphs[i+1]))
      article.body = nil
    end
  end

  # * get lines from paragraph
  def self.get_lines(paragraphs)
    paragraphs.each do |paragraph|
      # scan line numbers
      lines_no = paragraph.body.scan(/\d+\) /)
      # get content for lines
      raw_lines = paragraph.body.split(/\d+\) /)

      # strip body
      paragraph.body.strip!
      raw_lines.each { |raw_line| raw_line.strip! }

      # push lines
      lines_no.each_with_index do |line_no, i|
        paragraph.body = raw_lines[0]
        paragraph.lines << Line.new(title: line_no.rstrip, body: raw_lines[i+1])
      end
    end
  end

  # * get articles
  # * push paragraphs
  # * push lines
  # * return articles
  def self.parse(law)
    articles = get_articles(law)
    articles.each do |article|
      get_parapgraphs(article)
      get_lines(article.paragraphs)
    end
    articles
  end

end