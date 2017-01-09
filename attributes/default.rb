id = 'yarn'

default[id]['apt_repository']['uri'] = 'https://dl.yarnpkg.com/debian/'
default[id]['apt_repository']['key_uri'] = \
  'https://dl.yarnpkg.com/debian/pubkey.gpg'
default[id]['apt_repository']['distribution'] = 'stable'
default[id]['apt_repository']['components'] = %w(
  main
)
