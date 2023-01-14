# Fetchers {#chap-pkgs-fetchers}

When using Nix, you will frequently need to download source code and other files from the internet. Nixpkgs comes with a few helper functions that allow you to fetch fixed-output derivations in a structured way.

The two fetcher primitives are `fetchurl` and `fetchzip`. Both of these have two required arguments, a URL and a hash. The hash is typically `sha256`, although many more hash algorithms are supported. Nixpkgs contributors are currently recommended to use `sha256`. This hash will be used by Nix to identify your source. A typical usage of fetchurl is provided below.

```nix
{ stdenv, fetchurl }:

stdenv.mkDerivation {
  name = "hello";
  src = fetchurl {
    url = "http://www.example.org/hello.tar.gz";
    sha256 = "1111111111111111111111111111111111111111111111111111";
  };
}
```

The main difference between `fetchurl` and `fetchzip` is in how they store the contents. `fetchurl` will store the unaltered contents of the URL within the Nix store. `fetchzip` on the other hand will decompress the archive for you, making files and directories directly accessible in the future. `fetchzip` can only be used with archives. Despite the name, `fetchzip` is not limited to .zip files and can also be used with any tarball.

`fetchpatch` works very similarly to `fetchurl` with the same arguments expected. It expects patch files as a source and performs normalization on them before computing the checksum. For example it will remove comments or other unstable parts that are sometimes added by version control systems and can change over time.

Other fetcher functions allow you to add source code directly from a VCS such as subversion or git. These are mostly straightforward nambes based on the name of the command used with the VCS system. Because they give you a working repository, they act most like `fetchzip`.

## `fetchsvn` {#fetchsvn}

Used with Subversion. Expects `url` to a Subversion directory, `rev`, and `sha256`.

## `fetchgit` {#fetchgit}

Used with Git. Expects `url` to a Git repo, `rev`, and `sha256`. `rev` in this case can be full the git commit id (SHA1 hash) or a tag name like `refs/tags/v1.0`.

Additionally the following optional arguments can be given: `fetchSubmodules = true` makes `fetchgit` also fetch the submodules of a repository. If `deepClone` is set to true, the entire repository is cloned as opposing to just creating a shallow clone. `deepClone = true` also implies `leaveDotGit = true` which means that the `.git` directory of the clone won't be removed after checkout.

## `fetchfossil` {#fetchfossil}

Used with Fossil. Expects `url` to a Fossil archive, `rev`, and `sha256`.

## `fetchcvs` {#fetchcvs}

Used with CVS. Expects `cvsRoot`, `tag`, and `sha256`.

## `fetchhg` {#fetchhg}

Used with Mercurial. Expects `url`, `rev`, and `sha256`.

A number of fetcher functions wrap part of `fetchurl` and `fetchzip`. They are mainly convenience functions intended for commonly used destinations of source code in Nixpkgs. These wrapper fetchers are listed below.

## `fetchFromGitHub` {#fetchfromgithub}

`fetchFromGitHub` expects four arguments. `owner` is a string corresponding to the GitHub user or organization that controls this repository. `repo` corresponds to the name of the software repository. These are located at the top of every GitHub HTML page as `owner`/`repo`. `rev` corresponds to the Git commit hash or tag (e.g `v1.0`) that will be downloaded from Git. Finally, `sha256` corresponds to the hash of the extracted directory. Again, other hash algorithms are also available but `sha256` is currently preferred.

`fetchFromGitHub` uses `fetchzip` to download the source archive generated by GitHub for the specified revision. If `leaveDotGit`, `deepClone` or `fetchSubmodules` are set to `true`, `fetchFromGitHub` will use `fetchgit` instead. Refer to its section for documentation of these options.

## `fetchFromGitLab` {#fetchfromgitlab}

This is used with GitLab repositories. The arguments expected are very similar to fetchFromGitHub above.

## `fetchFromGitiles` {#fetchfromgitiles}

This is used with Gitiles repositories. The arguments expected are similar to fetchgit.

## `fetchFromBitbucket` {#fetchfrombitbucket}

This is used with BitBucket repositories. The arguments expected are very similar to fetchFromGitHub above.

## `fetchFromSavannah` {#fetchfromsavannah}

This is used with Savannah repositories. The arguments expected are very similar to fetchFromGitHub above.

## `fetchFromRepoOrCz` {#fetchfromrepoorcz}

This is used with repo.or.cz repositories. The arguments expected are very similar to fetchFromGitHub above.

## `fetchFromSourcehut` {#fetchfromsourcehut}

This is used with sourcehut repositories. The arguments expected are very similar to fetchFromGitHub above. Don't forget the tilde (~) in front of the user name!