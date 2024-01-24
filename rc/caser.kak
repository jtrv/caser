define-command 'Ada_Case' -docstring 'Ada_Case' %{
  execute-keys %{|caser ada <ret>}
}
define-command 'camelCase' -docstring 'camelCase' %{
  execute-keys %{|caser camel <ret>}
}
define-command 'ClassCase' -docstring 'ClassCase' %{
  execute-keys %{|caser class <ret>}
}
define-command 'Http-case' -docstring 'Http-case' %{
  execute-keys %{|caser http <ret>}
}
define-command 'Foreign_Key' -docstring 'Foreign::Key' %{
  execute-keys %{|caser foreign-key <ret>}
}
define-command 'invert_CASE' -docstring 'invert CASE' %{
  execute-keys %{<a-`>}
}
define-command 'kebab-case' -docstring 'kebab-case' %{
  execute-keys %{|caser kebab <ret>}
}
define-command 'ordinal' -docstring 'ordinal' %{
  execute-keys %{|caser ordinal <ret>}
}
define-command 'unordinal' -docstring 'unordinal' %{
  execute-keys %{|caser deordinalize <ret>}
}
define-command 'PascalCase' -docstring 'PascalCase' %{
  execute-keys %{|caser pascal <ret>}
}
define-command 'snake_case' -docstring 'snake_case' %{
  execute-keys %{|caser snake <ret>}
}
define-command 'SCREAMING_CASE' -docstring 'SCREAMING_CASE' %{
  execute-keys %{|caser screaming <ret>}
}
define-command 'Title_Case' -docstring 'Title Case' %{
  execute-keys %{|caser title <ret>}
}
define-command 'Train-Case' -docstring 'Train-Case' %{
  execute-keys %{|caser train <ret>}
}
define-command 'Sentence_case' -docstring 'Sentence case' %{
  execute-keys %{|caser sentence <ret>}
}
define-command 'single' -docstring 'single' %{
  execute-keys %{|caser singular <ret>}
}
define-command 'plurals' -docstring 'plurals' %{
  execute-keys %{|caser plural <ret>}
}
define-command 'table_case' -docstring 'table_case' %{
  execute-keys %{|caser table <ret>}
}

provide-module caser-recommended-bindings %{
  declare-user-mode caser
  map global user c -docstring 'case' %{:enter-user-mode case<ret>}
  map global case a -docstring 'Ada_Case'         %{:Ada_Case <ret>}
  map global case c -docstring 'camelCase'        %{:camelCase <ret>}
  map global case C -docstring 'ClassCase'        %{:ClassCase <ret>}
  map global case f -docstring 'Foreign::Key'     %{:Foreign_Key <ret>}
  map global case h -docstring 'Http-case'        %{:Http-case <ret>}
  map global case i -docstring 'invert CASE'      %{:invert_CASE <ret>}
  map global case k -docstring 'kebab-case'       %{:kebab-case <ret>}
  map global case l -docstring 'lowercase'        %{:lowercase <ret>}
  map global case o -docstring 'ordinal (1st)'    %{:ordinal <ret>}
  map global case O -docstring 'unordinal (1)'    %{:unordinal <ret>}
  map global case p -docstring 'PascalCase'       %{:PascalCase <ret>}
  map global case s -docstring 'snake_case'       %{:snake_case <ret>}
  map global case S -docstring 'SCREAMING_CASE'   %{:SCREAMING_CASE <ret>}
  map global case t -docstring 'Title Case'       %{:Title_Case <ret>}
  map global case T -docstring 'Train-Case'       %{:Train-Case <ret>}
  map global case u -docstring 'UPPERCASE'        %{:UPPERCASE <ret>}
  map global case . -docstring 'Sentence case'    %{:Sentence_case <ret>}
  map global case _ -docstring 'table_case'       %{:table_case <ret>}
  map global case 1 -docstring 'single'           %{:single <ret>}
  map global case 3 -docstring 'plurals'          %{:plurals <ret>}
}
