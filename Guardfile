# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/parser/myl_parser\.treetop$})     { "spec" }
  watch(%r{^spec/helpers/.+_helper\.rb$}) {'spec'}
  watch('spec/spec_helper.rb')  { "spec" }
end
