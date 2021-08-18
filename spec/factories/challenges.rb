FactoryBot.define do
  factory :challenge do
    name { Faker::Lorem.sentence(word_count: 3) }
    html { Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 4) }
    css { Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 4) }
  end
end
