node 'prod\d+.nokia.com' {
  include virtual_users

  User <| tag == 'ops' |>
  Package <| tag == 'production' |>
}

node 'dev\d+.nokia.com' {
  include virtual_users

  User <| group == 'ops' |>
  User <| group == 'dev' |>
  Package <| tag == 'testing' |>
}

node 'public\d+.nokia.com' {
  include virtual_users

  User <| group == 'ops' |>
  User <| group == 'users' |>
}
