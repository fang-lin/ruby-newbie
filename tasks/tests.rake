namespace :test do

  desc 'run auto_wrap tests'
  Rake::TestTask.new(:auto_wrap) do |t|
    t.test_files = FileList['tests/auto_wrap_spec.rb']
  end

  desc 'run fizz_buzz tests'
  Rake::TestTask.new(:fizz_buzz) do |t|
    t.test_files = FileList['tests/fizz_buzz_spec.rb']
  end

  desc 'run num_to_words tests'
  Rake::TestTask.new(:num_to_words) do |t|
    t.test_files = FileList['tests/num_to_words_spec.rb']
  end

  desc 'run all tests'
  task all: [:auto_wrap, :fizz_buzz, :num_to_words]

end

task :test => "test:all"
task :default do
  system "rake --tasks"
end