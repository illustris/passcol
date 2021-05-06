{ stdenv, python3Packages, pass, xdotool, fetchFromGitHub }:

stdenv.mkDerivation rec {
	version = "1.0.0";
	pname = "passcol";
	src = .;

	buildInputs = [
		pass python3Packages.percol xdotool
	];

	installPhase = ''
		mkdir -p $out/bin
		cp passcol.sh $out/bin/passcol
	'';
}
