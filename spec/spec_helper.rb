required_files = []
required_files.concat Dir[File.join(File.dirname(__FILE__), 'helpers', '**', '*.rb')]
required_files << File.join(File.dirname(__FILE__), '..', 'lib', 'myl_parser.rb')
required_files.each do |file|
  require File.expand_path file
end

include MylReferenceParser

def parse(data)
  if ENV['Myl'] == 'print'
    begin
      file = File.open(File.join(File.dirname(__FILE__), '..', 'code_example.md'), 'a')
      file.write("\n```\n#{data}\n```\n")
    rescue IOError => e
      puts 'error while writing to file '
    ensure
      file.close unless file == nil
    end
  end
  TreeParser.parse(data)
end
