require 'fileutils'

CATEGORIES = {
  'Images' => [".png", ".jpeg", ".jpg", ".webp", ".heic", ".gif", ".raw"],
  'Documents'   => [".pdf", ".doc", ".txt", ".docx", ".rtf", ".odt", ".ppt", ".csv", ".ods", ".odb"],
  'Video'      => [".mp4", ".mov", ".avi", ".mkv", ".webm"],
  'Arhives'      => [".zip", ".7z", ".rar", ".tar", ".gz", ".tgz"],
  'porg'   => [".sql", ".db", ".go", ".cpp", ".c", ".asm", ".rb", ".py", ".js", ".html", ".css", ".dart", ".php", ".jar"],
  'torent'    => [".torrent"],
  'iso'      => [".iso", ".ova"],
  'Rpm'   => [".rpm"],
  'Deb'  => [".deb"],
  'exe'      => [".exe"] 
}

def main
  source_dir = '/home/user/Downloads' # user -> your system user name 

  Dir.children(source_dir).each do |f|
    full_path = File.join(source_dir, f)
    next if File.directory?(full_path)

    folder_name, _extensions = CATEGORIES.find do |_folder, exts|
      f.downcase.end_with?(*exts)
    end

    if folder_name
      target_dir = File.join('/home/user', folder_name) # user -> your system user name 

      FileUtils.mkdir_p(target_dir)
      FileUtils.mv(full_path, target_dir)

    end
  end
end



main
