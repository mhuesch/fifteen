{ mkDerivation, base, bimap, brick, lib, microlens-platform, random
, time, vty
}:
mkDerivation {
  pname = "fifteen";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bimap brick microlens-platform random time vty
  ];
  executableHaskellDepends = [ base brick random time vty ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
