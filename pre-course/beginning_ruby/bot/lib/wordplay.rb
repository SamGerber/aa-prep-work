class WordPlay
  def self.switch_pronouns(text)

    text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
      case pronoun.downcase
      when "i"
        "you"
      when "you"
        "me"
      when "me"
        "you"
      when "i am"
        "you are"
      when "you are"
        "i am"
      when "my"
        "your"
      when "your"
        "my"
      end
    end.sub(/^me\b/i, 'i')
  end
end

class String
  def sentences
    seperators = /[\.\?!;]\s*/
    gsub(/\n|\r/, ' ').split(seperators)
  end

  def words
    scan(/\w[\w\'\-]*/)
  end
end
