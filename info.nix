pkg:
  ''
  echo "name:    ${pkg.pname or pkg.name}"
  echo "version: ${pkg.version or "none"}"
  echo "repo:    ${pkg.repo}"
  echo "commit:  ${pkg.rev}"
  ''
