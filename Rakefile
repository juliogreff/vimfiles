task :remove_snippets do
  cwd = File.expand_path("../", __FILE__)
  sh "rm -rf #{cwd}/bundle/snipmate.vim/snippets"
end

task :default => [
  :remove_snippets
]
