# This file has been generated by node2nix 1.9.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "acorn-1.2.2" = {
      name = "acorn";
      packageName = "acorn";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/acorn/-/acorn-1.2.2.tgz";
        sha1 = "c8ce27de0acc76d896d2b1fad3df588d9e82f014";
      };
    };
    "acorn-2.7.0" = {
      name = "acorn";
      packageName = "acorn";
      version = "2.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/acorn/-/acorn-2.7.0.tgz";
        sha1 = "ab6e7d9d886aaca8b085bc3312b79a198433f0e7";
      };
    };
    "acorn-globals-1.0.9" = {
      name = "acorn-globals";
      packageName = "acorn-globals";
      version = "1.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/acorn-globals/-/acorn-globals-1.0.9.tgz";
        sha1 = "55bb5e98691507b74579d0513413217c380c54cf";
      };
    };
    "align-text-0.1.4" = {
      name = "align-text";
      packageName = "align-text";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/align-text/-/align-text-0.1.4.tgz";
        sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
      };
    };
    "almond-0.3.3" = {
      name = "almond";
      packageName = "almond";
      version = "0.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/almond/-/almond-0.3.3.tgz";
        sha1 = "a0e7c95ac7624d6417b4494b1e68bff693168a20";
      };
    };
    "amdefine-1.0.1" = {
      name = "amdefine";
      packageName = "amdefine";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/amdefine/-/amdefine-1.0.1.tgz";
        sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
      };
    };
    "asap-1.0.0" = {
      name = "asap";
      packageName = "asap";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/asap/-/asap-1.0.0.tgz";
        sha1 = "b2a45da5fdfa20b0496fc3768cc27c12fa916a7d";
      };
    };
    "camelcase-1.2.1" = {
      name = "camelcase";
      packageName = "camelcase";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/camelcase/-/camelcase-1.2.1.tgz";
        sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
      };
    };
    "center-align-0.1.3" = {
      name = "center-align";
      packageName = "center-align";
      version = "0.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/center-align/-/center-align-0.1.3.tgz";
        sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
      };
    };
    "character-parser-1.2.1" = {
      name = "character-parser";
      packageName = "character-parser";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/character-parser/-/character-parser-1.2.1.tgz";
        sha1 = "c0dde4ab182713b919b970959a123ecc1a30fcd6";
      };
    };
    "clean-css-3.4.28" = {
      name = "clean-css";
      packageName = "clean-css";
      version = "3.4.28";
      src = fetchurl {
        url = "https://registry.npmjs.org/clean-css/-/clean-css-3.4.28.tgz";
        sha1 = "bf1945e82fc808f55695e6ddeaec01400efd03ff";
      };
    };
    "cliui-2.1.0" = {
      name = "cliui";
      packageName = "cliui";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cliui/-/cliui-2.1.0.tgz";
        sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
      };
    };
    "commander-2.6.0" = {
      name = "commander";
      packageName = "commander";
      version = "2.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.6.0.tgz";
        sha1 = "9df7e52fb2a0cb0fb89058ee80c3104225f37e1d";
      };
    };
    "commander-2.8.1" = {
      name = "commander";
      packageName = "commander";
      version = "2.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
        sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
      };
    };
    "constantinople-3.0.2" = {
      name = "constantinople";
      packageName = "constantinople";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/constantinople/-/constantinople-3.0.2.tgz";
        sha1 = "4b945d9937907bcd98ee575122c3817516544141";
      };
    };
    "css-1.0.8" = {
      name = "css";
      packageName = "css";
      version = "1.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/css/-/css-1.0.8.tgz";
        sha1 = "9386811ca82bccc9ee7fb5a732b1e2a317c8a3e7";
      };
    };
    "css-parse-1.0.4" = {
      name = "css-parse";
      packageName = "css-parse";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/css-parse/-/css-parse-1.0.4.tgz";
        sha1 = "38b0503fbf9da9f54e9c1dbda60e145c77117bdd";
      };
    };
    "css-stringify-1.0.5" = {
      name = "css-stringify";
      packageName = "css-stringify";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/css-stringify/-/css-stringify-1.0.5.tgz";
        sha1 = "b0d042946db2953bb9d292900a6cb5f6d0122031";
      };
    };
    "decamelize-1.2.0" = {
      name = "decamelize";
      packageName = "decamelize";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      };
    };
    "graceful-readlink-1.0.1" = {
      name = "graceful-readlink";
      packageName = "graceful-readlink";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
        sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
      };
    };
    "is-buffer-1.1.6" = {
      name = "is-buffer";
      packageName = "is-buffer";
      version = "1.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.6.tgz";
        sha512 = "NcdALwpXkTm5Zvvbk7owOUSvVvBKDgKP5/ewfXEznmQFfs4ZRmanOeKBTjRVjka3QFoN6XJ+9F3USqfHqTaU5w==";
      };
    };
    "is-promise-1.0.1" = {
      name = "is-promise";
      packageName = "is-promise";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-1.0.1.tgz";
        sha1 = "31573761c057e33c2e91aab9e96da08cefbe76e5";
      };
    };
    "is-promise-2.2.2" = {
      name = "is-promise";
      packageName = "is-promise";
      version = "2.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-2.2.2.tgz";
        sha512 = "+lP4/6lKUBfQjZ2pdxThZvLUAafmZb8OAxFb8XXtiQmS35INgr85hdOGoEs124ez1FCnZJt6jau/T+alh58QFQ==";
      };
    };
    "jade-1.11.0" = {
      name = "jade";
      packageName = "jade";
      version = "1.11.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/jade/-/jade-1.11.0.tgz";
        sha1 = "9c80e538c12d3fb95c8d9bb9559fa0cc040405fd";
      };
    };
    "jstransformer-0.0.2" = {
      name = "jstransformer";
      packageName = "jstransformer";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/jstransformer/-/jstransformer-0.0.2.tgz";
        sha1 = "7aae29a903d196cfa0973d885d3e47947ecd76ab";
      };
    };
    "kind-of-3.2.2" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "3.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    };
    "lazy-cache-1.0.4" = {
      name = "lazy-cache";
      packageName = "lazy-cache";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/lazy-cache/-/lazy-cache-1.0.4.tgz";
        sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
      };
    };
    "longest-1.0.1" = {
      name = "longest";
      packageName = "longest";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/longest/-/longest-1.0.1.tgz";
        sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
      };
    };
    "minimist-1.2.5" = {
      name = "minimist";
      packageName = "minimist";
      version = "1.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz";
        sha512 = "FM9nNUYrRBAELZQT3xeZQ7fmMOBg6nWNmJKTcgsJeaLstP/UODVpGsr5OhXhhXg6f+qtJ8uiZ+PUxkDWcgIXLw==";
      };
    };
    "mkdirp-0.5.5" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.5.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.5.tgz";
        sha512 = "NKmAlESf6jMGym1++R0Ra7wvhV+wFW63FaSOFPwRahvea0gMUcGUhVeAg/0BC0wiv9ih5NYPB1Wn1UEI1/L+xQ==";
      };
    };
    "optimist-0.3.7" = {
      name = "optimist";
      packageName = "optimist";
      version = "0.3.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
        sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
      };
    };
    "promise-2.0.0" = {
      name = "promise";
      packageName = "promise";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/promise/-/promise-2.0.0.tgz";
        sha1 = "46648aa9d605af5d2e70c3024bf59436da02b80e";
      };
    };
    "promise-6.1.0" = {
      name = "promise";
      packageName = "promise";
      version = "6.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/promise/-/promise-6.1.0.tgz";
        sha1 = "2ce729f6b94b45c26891ad0602c5c90e04c6eef6";
      };
    };
    "repeat-string-1.6.1" = {
      name = "repeat-string";
      packageName = "repeat-string";
      version = "1.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    };
    "requirejs-2.3.6" = {
      name = "requirejs";
      packageName = "requirejs";
      version = "2.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/requirejs/-/requirejs-2.3.6.tgz";
        sha512 = "ipEzlWQe6RK3jkzikgCupiTbTvm4S0/CAU5GlgptkN5SO6F3u0UD0K18wy6ErDqiCyP4J4YYe1HuAShvsxePLg==";
      };
    };
    "requirejs-text-2.0.16" = {
      name = "requirejs-text";
      packageName = "requirejs-text";
      version = "2.0.16";
      src = fetchurl {
        url = "https://registry.npmjs.org/requirejs-text/-/requirejs-text-2.0.16.tgz";
        sha512 = "XrzjeTb1pwzIWmkz8qnUiM20gENgiwB+66IciNuziwlaPAJsYQsQPSYyQ1kD4tGKGZxTisIfDbOHk02DpI/76Q==";
      };
    };
    "right-align-0.1.3" = {
      name = "right-align";
      packageName = "right-align";
      version = "0.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/right-align/-/right-align-0.1.3.tgz";
        sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
      };
    };
    "source-map-0.1.43" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.1.43";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
        sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
      };
    };
    "source-map-0.4.4" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
        sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
      };
    };
    "source-map-0.5.7" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.5.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    };
    "transformers-2.1.0" = {
      name = "transformers";
      packageName = "transformers";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/transformers/-/transformers-2.1.0.tgz";
        sha1 = "5d23cb35561dd85dc67fb8482309b47d53cce9a7";
      };
    };
    "uglify-js-2.2.5" = {
      name = "uglify-js";
      packageName = "uglify-js";
      version = "2.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/uglify-js/-/uglify-js-2.2.5.tgz";
        sha1 = "a6e02a70d839792b9780488b7b8b184c095c99c7";
      };
    };
    "uglify-js-2.8.29" = {
      name = "uglify-js";
      packageName = "uglify-js";
      version = "2.8.29";
      src = fetchurl {
        url = "https://registry.npmjs.org/uglify-js/-/uglify-js-2.8.29.tgz";
        sha1 = "29c5733148057bb4e1f75df35b7a9cb72e6a59dd";
      };
    };
    "uglify-to-browserify-1.0.2" = {
      name = "uglify-to-browserify";
      packageName = "uglify-to-browserify";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
        sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
      };
    };
    "void-elements-2.0.1" = {
      name = "void-elements";
      packageName = "void-elements";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/void-elements/-/void-elements-2.0.1.tgz";
        sha1 = "c066afb582bb1cb4128d60ea92392e94d5e9dbec";
      };
    };
    "window-size-0.1.0" = {
      name = "window-size";
      packageName = "window-size";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/window-size/-/window-size-0.1.0.tgz";
        sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
      };
    };
    "with-4.0.3" = {
      name = "with";
      packageName = "with";
      version = "4.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/with/-/with-4.0.3.tgz";
        sha1 = "eefd154e9e79d2c8d3417b647a8f14d9fecce14e";
      };
    };
    "wordwrap-0.0.2" = {
      name = "wordwrap";
      packageName = "wordwrap";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.2.tgz";
        sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
      };
    };
    "wordwrap-0.0.3" = {
      name = "wordwrap";
      packageName = "wordwrap";
      version = "0.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
        sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
      };
    };
    "yargs-3.10.0" = {
      name = "yargs";
      packageName = "yargs";
      version = "3.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/yargs/-/yargs-3.10.0.tgz";
        sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
      };
    };
  };
  args = {
    name = "isso";
    packageName = "isso";
    version = "latest";
    src = ./.;
    dependencies = [
      sources."acorn-2.7.0"
      sources."acorn-globals-1.0.9"
      sources."align-text-0.1.4"
      sources."almond-0.3.3"
      sources."amdefine-1.0.1"
      sources."asap-1.0.0"
      sources."camelcase-1.2.1"
      sources."center-align-0.1.3"
      sources."character-parser-1.2.1"
      (sources."clean-css-3.4.28" // {
        dependencies = [
          sources."commander-2.8.1"
        ];
      })
      (sources."cliui-2.1.0" // {
        dependencies = [
          sources."wordwrap-0.0.2"
        ];
      })
      sources."commander-2.6.0"
      sources."constantinople-3.0.2"
      sources."css-1.0.8"
      sources."css-parse-1.0.4"
      sources."css-stringify-1.0.5"
      sources."decamelize-1.2.0"
      sources."graceful-readlink-1.0.1"
      sources."is-buffer-1.1.6"
      sources."is-promise-2.2.2"
      sources."jade-1.11.0"
      sources."jstransformer-0.0.2"
      sources."kind-of-3.2.2"
      sources."lazy-cache-1.0.4"
      sources."longest-1.0.1"
      sources."minimist-1.2.5"
      sources."mkdirp-0.5.5"
      sources."optimist-0.3.7"
      sources."promise-6.1.0"
      sources."repeat-string-1.6.1"
      sources."requirejs-2.3.6"
      sources."requirejs-text-2.0.16"
      sources."right-align-0.1.3"
      sources."source-map-0.4.4"
      (sources."transformers-2.1.0" // {
        dependencies = [
          sources."is-promise-1.0.1"
          sources."promise-2.0.0"
          sources."source-map-0.1.43"
          sources."uglify-js-2.2.5"
        ];
      })
      (sources."uglify-js-2.8.29" // {
        dependencies = [
          sources."source-map-0.5.7"
        ];
      })
      sources."uglify-to-browserify-1.0.2"
      sources."void-elements-2.0.1"
      sources."window-size-0.1.0"
      (sources."with-4.0.3" // {
        dependencies = [
          sources."acorn-1.2.2"
        ];
      })
      sources."wordwrap-0.0.3"
      sources."yargs-3.10.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "lightweight Disquis alternative";
      license = "MIT";
    };
    production = false;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}