{ lib
, buildPythonPackage
, fetchPypi
, cython
, pytest-runner
, pytestCheckHook
, hypothesis
}:

buildPythonPackage rec {
  pname = "marisa-trie";
  version = "0.7.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "c73bc25d868e8c4ea7aa7f1e19892db07bba2463351269b05340ccfa06eb2baf";
  };

  postPatch = ''
    substituteInPlace setup.py \
      --replace "hypothesis==" "hypothesis>="
  '';

  nativeBuildInputs = [
    cython
    pytest-runner
  ];

  preBuild = ''
    ./update_cpp.sh
  '';

  checkInputs = [
    pytestCheckHook
    hypothesis
  ];

  disabledTests = [
    # Pins hypothesis==2.0.0 from 2016/01 which complains about
    # hypothesis.errors.FailedHealthCheck: tests/test_trie.py::[...] uses the 'tmpdir' fixture, which is reset between function calls but not between test cases generated by `@given(...)`.
    "test_saveload"
    "test_mmap"
  ];

  meta = with lib; {
    description = "Static memory-efficient Trie-like structures for Python (2.x and 3.x) based on marisa-trie C++ library";
    longDescription = "There are official SWIG-based Python bindings included in C++ library distribution; this package provides alternative Cython-based pip-installable Python bindings.";
    homepage =  "https://github.com/kmike/marisa-trie";
    license = licenses.mit;
    maintainers = with maintainers; [ ixxie ];
  };
}