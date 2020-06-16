class Target < ApplicationRecord
  has_one_attached :file

  def next
    Target.where("id > ?", id).limit(1).first
  end

  def prev
    Target.where("id < ?", id).limit(1).first
  end

  private
  
  def self.import_targets
    Dir.children("../output").each do |f| 
      t = Target.new
      t.file.attach(io: File.open(File.join(Dir.pwd, "../output", f)), filename: f)
      t.save
    end
  end
end
