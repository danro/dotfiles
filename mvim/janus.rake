# utility functions 
# from: https://github.com/aniero/dotfiles/blob/master/janus.rake

def remove_plugin_task(name)
  task(name).clear
  task("#{name}:pull").clear
  task("#{name}:install").clear
  file(File.expand_path("tmp/#{name}") => "tmp").clear
end

def override_plugin_task(name, repo=nil, &block)
  remove_plugin_task name
  vim_plugin_task name, repo, &block
end


# remove plugins
remove_plugin_task "ack.vim"
remove_plugin_task "conque"
remove_plugin_task "fugitive"
remove_plugin_task "haml"
remove_plugin_task "indent_object"
remove_plugin_task "taglist"
remove_plugin_task "vividchalk"
remove_plugin_task "solarized"
remove_plugin_task "cucumber"
remove_plugin_task "rails"
remove_plugin_task "rspec"
remove_plugin_task "snipmate"
remove_plugin_task "searchfold"
remove_plugin_task "endwise"
remove_plugin_task "puppet"
remove_plugin_task "scala"

# override plugins
override_plugin_task "nerdtree", "git://github.com/scrooloose/nerdtree.git"

# add plugins
vim_plugin_task "css3", "git://github.com/hail2u/vim-css3-syntax.git"
vim_plugin_task "html5", "git://github.com/othree/html5.vim.git"
vim_plugin_task "json", "git://github.com/vim-scripts/JSON.vim.git"
vim_plugin_task "rename", "git://github.com/danro/rename.vim.git"
vim_plugin_task "actionscript", "git://github.com/vim-scripts/actionscript.vim--Leider.git"
vim_plugin_task "html_entities_helper", "git://github.com/firegoby/html_entities_helper.vim.git"

# snipmate + dependencies
vim_plugin_task "vim-addon-mw-utils", "git://github.com/MarcWeber/vim-addon-mw-utils.git"
vim_plugin_task "tlib_vim", "git://github.com/tomtom/tlib_vim.git"
vim_plugin_task "snipmate-garbas", "git://github.com/garbas/vim-snipmate.git"

# disable formatoptions "o" to disallow comment continuation
# in various ftplugin that enable it
# from: https://github.com/aniero/dotfiles/blob/master/janus.rake
vim_plugin_task "fo_minus_o" do
  Dir.mkdir "after/ftplugin" unless File.directory?("after/ftplugin")
  %w(ruby vim coffee gitconfig javascript php actionscript).each do |filetype|
    File.open("after/ftplugin/#{filetype}.vim", "w+") do |f|
      f.puts "setlocal formatoptions-=o"
    end
  end
end

