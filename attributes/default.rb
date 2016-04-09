default['php']['directives'] = {
    'default_charset'            => 'UTF-8',
    'mbstring.language'          => 'neutral',
    'mbstring.internal_encoding' => 'UTF-8',
    'date.timezone'              => 'UTC',
    'short_open_tag'             => 'Off',
    'session.save_path'          => '/tmp',
    'upload_max_filesize'        => '32M'
}

default['php']['fpm_pool_additional_config'] = {
    'pm.status_path' => '/status',
    'ping.path' => '/ping',
    'ping.response' => 'pong'
}
