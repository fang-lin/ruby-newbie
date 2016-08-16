namespace :test do
  desc 'run auto_wrap tests'
  task :auto_wrap, :environment do
    Rake::TestTask.new(:auto_wrap) do |t|
      t.test_files = FileList['tests/auto_wrap_spec.rb']
    end
    Rake::Task[:auto_wrap].execute
  end

  desc 'run fizz buzz tests'
  task :fizz_buzz, :environment do
    Rake::TestTask.new(:fizz_buzz) do |t|
      t.test_files = FileList['tests/fizz_buzz_spec.rb']
    end
    Rake::Task[:fizz_buzz].execute
  end

  desc 'run num_to_words tests'
  task :num_to_words, :environment do
    Rake::TestTask.new(:num_to_words) do |t|
      t.test_files = FileList['tests/num_to_words_spec.rb']
    end
    Rake::Task[:num_to_words].execute
  end

  desc 'run all tests'
  task all: [:auto_wrap, :fizz_buzz, :num_to_words]
end

task default: "test:all"