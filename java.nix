{
  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        buildInputs = with pkgs; [
          jdk22
          maven
        ];
        shellHook = ''
          export JAVA_HOME=${pkgs.jdk22}
          export PATH=$JAVA_HOME/bin:${pkgs.maven}/bin:$PATH
        '';
      };
  };
}
