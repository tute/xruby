class AlphameticsCase < OpenStruct
  def test_name
    "test_#{description.tr(' ', '_')}"
  end

  def skipped?
    index > 0
  end
end

AlphameticsCases = proc do |data|
  JSON.parse(data)['solve']['cases'].map.with_index do |row, i|
    AlphameticsCase.new(row.merge('index' => i))
  end
end
