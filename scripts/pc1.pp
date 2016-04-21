# bundle exec puppet apply pc1.pp
package { "remove_it":
  name     => "vim-X11",
  provider => "yum",
  ensure   => "absent",
}

package { "gem_vim":
  name     => "vim-X11",
  provider => "yum",
  ensure   => "latest"
}
