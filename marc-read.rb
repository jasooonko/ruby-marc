require 'marc'
require 'CSV'

#{record['269']['a']}data_file = 'Book1.csv'

#writer = MARC::Writer.new('marc.dat')
#i=0
#CSV.foreach(data_file, headers: true, :header_converters => :symbol) do |row|
    #puts row.inspect # hash
    #puts row[:title]
#    record = MARC::Record.new()
#    record.append(MARC::DataField.new('245', '0',  ' ', ['a', row[:title]]))
#    record.append(MARC::DataField.new('100', '0',  ' ', ['a', row[:author]]))
#    record.append(MARC::DataField.new('260', '0',  ' ', ['b', row[:publisher]]))
#    record.append(MARC::DataField.new('260', '0',  ' ', ['a', row[:publication_place]]))
#    record.append(MARC::DataField.new('260', '0',  ' ', ['c', row[:publication_date]]))
#    writer.write(record)
#    puts (i=i+1)
#    break if (i == 10)
#end

#writer.close()

# reading records from a batch file
reader = MARC::Reader.new('marc.dat')
#reader = MARC::Reader.new('marc.dat', :external_encoding => "MARC-8")
#reader = MARC::Reader.new('book-out.mrk', :external_encoding => "MARC-21")
#reader = MARC::Reader.new('sample/39985-cat-export.txt', :external_encoding => "MARC-8")
for record in reader
  # print out field 245 subfield a
  #puts "#{record['245']['a']} | #{record['100']['a']} | #{record['269']['a']} | #{record['269']['b']} | #{record['269']['c']}}"
  puts record
end

# creating a record 
#record = MARC::Record.new()
#record.append(MARC::DataField.new('100', '0',  ' ', ['a', 'John Doe']))
#record.append(MARC::DataField.new('245', '0',  ' ', ['a', 'hello world']))

# writing a record
#writer = MARC::Writer.new('marc.dat')
#writer.write(record)
#writer.close()

# writing a record as XML
#writer = MARC::XMLWriter.new('marc.xml')
#writer.write(record)
#writer.close()

# encoding a record
#MARC::Writer.encode(record) # or record.to_marc
