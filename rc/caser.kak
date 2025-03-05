provide-module caser %{
define-command ada-case -docstring 'Ada_Case' %{
  execute-keys %{|caser ada <ret>}
}
define-command camel-case -docstring 'camelCase' %{
  execute-keys %{|caser camel <ret>}
}
define-command class-case -docstring 'ClassCase' %{
  execute-keys %{|caser class <ret>}
}
define-command deconstantize -docstring 'deconstantize' %{
  execute-keys %{|caser deconstantize <ret>}
}
define-command demodulize -docstring 'demodulize' %{
  execute-keys %{|caser demodulize <ret>}
}
define-command foreign-key -docstring 'Foreign::Key' %{
  execute-keys %{|caser foreign-key <ret>}
}
define-command http-case -docstring 'Http-case' %{
  execute-keys %{|caser http <ret>}
}
define-command invert-case -docstring 'invert CASE' %{
  execute-keys %{<a-`>}
}
define-command kebab-case -docstring 'kebab-case' %{
  execute-keys %{|caser kebab <ret>}
}
define-command lower-case -docstring 'lower case' %{
  execute-keys `
}
define-command ordinalize -docstring '1st ordinalize' %{
  execute-keys %{|caser ordinal <ret>}
}
define-command deordinalize -docstring '1 deordinalize' %{
  execute-keys %{|caser deordinalize <ret>}
}
define-command pascal-case -docstring 'PascalCase' %{
  execute-keys %{|caser pascal <ret>}
}
define-command screaming-case -docstring 'SCREAMING_CASE' %{
  execute-keys %{|caser screaming <ret>}
}
define-command sentence-case -docstring 'Sentence case' %{
  execute-keys %{|caser sentence <ret>}
}
define-command singular -docstring 'singular' %{
  execute-keys %{|caser singular <ret>}
}
define-command plural -docstring 'plurals' %{
  execute-keys %{|caser plural <ret>}
}
define-command snake-case -docstring 'snake_case' %{
  execute-keys %{|caser snake <ret>}
}
define-command table-case -docstring 'table_case' %{
  execute-keys %{|caser table <ret>}
}
define-command title-case -docstring 'Title Case' %{
  execute-keys %{|caser title <ret>}
}
define-command train-case -docstring 'Train-Case' %{
  execute-keys %{|caser train <ret>}
}
define-command upper-case -docstring 'UPPER CASE' %{
  execute-keys %{|caser upper <ret>}
}
}

provide-module caser-recommended-bindings %{
  require-module caser
  declare-user-mode case
  map global user c -docstring 'case' %{:enter-user-mode case<ret>}
  map global case a -docstring 'Ada_Case'          %{:ada-case <ret>}
  map global case c -docstring 'camelCase'         %{:camel-case <ret>}
  map global case C -docstring 'ClassCase'         %{:class-case <ret>}
  map global case d -docstring 'deconstantize'     %{:deconstantize <ret>}
  map global case D -docstring 'demodulize'        %{:demodulize <ret>}
  map global case f -docstring 'Foreign::Key'      %{:foreign-key <ret>}
  map global case h -docstring 'Http-case'         %{:http-case <ret>}
  map global case i -docstring 'invert CASE'       %{:invert-case <ret>}
  map global case k -docstring 'kebab-case'        %{:kebab-case <ret>}
  map global case l -docstring 'lower case'        %{:lowercase <ret>}
  map global case o -docstring '1st ordinalize'    %{:ordinalize <ret>}
  map global case O -docstring '1 deordinalize'    %{:deordinalize <ret>}
  map global case p -docstring 'PascalCase'        %{:pascal-case <ret>}
  map global case s -docstring 'snake_case'        %{:snake-case <ret>}
  map global case S -docstring 'SCREAMING_CASE'    %{:screaming-case <ret>}
  map global case t -docstring 'Title Case'        %{:title-case <ret>}
  map global case T -docstring 'Train-Case'        %{:train-case <ret>}
  map global case u -docstring 'UPPERCASE'         %{:uppercase <ret>}
  map global case 1 -docstring 'single'            %{:single <ret>}
  map global case 2 -docstring 'plurals'           %{:plurals <ret>}
  map global case . -docstring 'Sentence case'     %{:sentence-case <ret>}
  map global case _ -docstring 'table_case'        %{:table-case <ret>}
}
