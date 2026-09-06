{
  flake.modules.homeManager.godot =
    {
      inputs,
      lib,
      pkgs,
      ...
    }:
    {
      home.packages = with pkgs; [
        godot
      ];

      programs.mcp.servers.godot = {
        command = lib.getExe pkgs.godot-mcp;
        env.GODOT_PATH = lib.getExe pkgs.godot;
      };
    };
}
