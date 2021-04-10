{ make-name = name: version:
    if version == null then
      { inherit name; }
    else
      { pname = name; inherit version; };

  package-info = pkg:
    ''
    echo "name:    ${pkg.pname or pkg.name}"
    echo "version: ${pkg.version or "none"}"
    echo "repo:    ${pkg.repo}"
    echo "commit:  ${pkg.rev}"
    '';
}
