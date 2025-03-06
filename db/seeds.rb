require 'csv'

fortunes_text = File.read(Rails.root.join('lib', 'seeds', 'fortunes.csv'))
fortunes_csv = CSV.parse(fortunes_text, liberal_parsing: true, headers: true, force_quotes: true,   quote_char: '"')
fortunes_csv.each do |row|
    f = Fortune.new
    f.text = row['text']
    f.save
end
