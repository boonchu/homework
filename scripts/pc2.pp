# bundle exec puppet apply pc1.pp
package { "remove-rpm-vim":
  name     => "vim-X11",
  provider => "yum",
  ensure   => "absent",
}

package { "latest-gem-vim":
  name     => "vim-X11",
  provider => "yum",
  ensure   => "latest"
}
