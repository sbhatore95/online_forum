namespace :export do
  desc "Prints Question.all in a seeds.rb way."
  task :seeds_format => :environment do
    Question.order(:id).all.each do |question|
      puts "Question.create(#{question.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
  desc "Prints Comment.all in a seeds.rb way."
  task :seeds_format => :environment do
    Comment.order(:id).all.each do |comment|
      puts "Comment.create(#{comment.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
  desc "Prints Reply.all in a seeds.rb way."
  task :seeds_format => :environment do
    Reply.order(:id).all.each do |reply|
      puts "Reply.create(#{reply.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
  desc "Prints User.all in a seeds.rb way."
  task :seeds_format => :environment do
    User.order(:id).all.each do |user|
      puts "User.create(#{user.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end