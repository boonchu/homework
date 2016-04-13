# class_me::configure
# https://docs.puppet.com/puppet/latest/reference/lang_template.html
# https://docs.puppet.com/puppet/latest/reference/lang_template_erb.html
# set up template file
class class_me::configure(
    $messages = undef,
) {

   $hello_template = @(END)
        hello_world:
        <% @messages.each do |val| %>
            <% if @val != "boonchu" %>shows <%= val %><% end %>
        <% end %>
   END

   $bye_template = @(END)
        bye:
   END

   file { '/etc/default/hello':
     ensure  => file,
     content => inline_template($hello_template, $bye_template),
   }

}
