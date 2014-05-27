class other 
{
    package 
    { 
        "curl":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "sqlite":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package
    {
      "git":
      ensure  => present,
      require => Exec['apt-get update']
    }
    package
    {
      "mc":
      ensure  => present,
      require => Exec['apt-get update']
    }
    package
    {
      "screen":
      ensure  => present,
      require => Exec['apt-get update']
    }
}
