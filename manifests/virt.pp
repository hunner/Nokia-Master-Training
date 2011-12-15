Yumrepo <| |> -> Package <| |> -> Service <| |>

user { 'hunner':
  ensure => absent,
}

File <| |> {
  owner => 'root',
}
