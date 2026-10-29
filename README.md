# Downloads Organizer

A simple Ruby script that automatically organizes files from your `Downloads` directory into categorized folders based on their file extensions.

## Supported Categories

- **Images** (`.png`, `.jpeg`, `.jpg`, `.webp`, `.heic`, `.gif`, `.raw`)
- **Documents** (`.pdf`, `.doc`, `.txt`, `.docx`, `.rtf`, `.odt`, `.ppt`, `.csv`, `.ods`, `.odb`)
- **Video** (`.mp4`, `.mov`, `.avi`, `.mkv`, `.webm`)
- **Arhives** (`.zip`, `.7z`, `.rar`, `.tar`, `.gz`, `.tgz`)
- **porg** — source code & database files (`.sql`, `.db`, `.go`, `.cpp`, `.c`, `.asm`, `.rb`, `.py`, `.js`, `.html`, `.css`, `.dart`, `.php`, `.jar`)
- **torent** (`.torrent`)
- **iso** (`.iso`, `.ova`)
- **Installers / Packages** (`.rpm`, `.deb`, `.exe`)

## Configuration

In [`main.rb`](main.rb), update the path to match your system username (replace `user` with your actual username):

```ruby
source_dir = '/home/<your_username>/Downloads'
target_dir = File.join('/home/<your_username>', folder_name)
```

> **Tip:** You can avoid hardcoding paths by using `Dir.home`:
> ```ruby
> source_dir = File.join(Dir.home, 'Downloads')
> target_dir = File.join(Dir.home, folder_name)
> ```

## Running the Script

Ensure you have Ruby installed, then run:

```bash
ruby main.rb
```