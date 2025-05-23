{
  programs.onedrive = {
    enable = true;
    settings = {
      check_nomount = "false";
      check_nosync = "false";
      classify_as_big_delete = "1000";
      cleanup_local_files = "false";
      disable_notifications = "false";
      no_remote_delete = "false";
      rate_limit = "0";
      resync = "false";
      skip_dotfiles = "false";
    };
  };

  nmt.script = ''
    assertFileExists home-files/.config/onedrive/config
    assertFileContent home-files/.config/onedrive/config \
    ${./example-config}
  '';
}
