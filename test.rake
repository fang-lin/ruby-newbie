namespace :test do
  desc 'run fizz buzz tests'
  task :fizz_buzz, :environment do
    Rake::TestTask.new(:fizz_buzz) do |t|
      t.test_files = FileList['fizz_buzz/*_spec.rb']
    end
    Rake::Task[:fizz_buzz].execute
  end

  desc 'run num_to_words tests'
  task :num_to_words, :environment do
    Rake::TestTask.new(:num_to_words) do |t|
      t.test_files = FileList['num_to_words/*_spec.rb']
    end
    Rake::Task[:num_to_words].execute
  end

  desc 'run all tests'
  task all: [:fizz_buzz, :num_to_words]
end

desc 'run all tests'
task test: ['test:all']