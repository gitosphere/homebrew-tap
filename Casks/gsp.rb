cask "gsp" do
  version "0.6.0"
  sha256 "aa4e10126df2563dd3d8027a9c63acd46d17b2a0fd14c6067620466855f4561c"

  url "https://github.com/gitosphere/gsp/releases/download/#{version}/gsp-#{version}-macos-arm64.dmg"
  name "Gitosphere CLI"
  desc "Official command-line interface for Gitosphere"
  homepage "https://github.com/gitosphere/gsp"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  binary "bin/gsp"
  bash_completion "completions/gsp.bash"
  fish_completion "completions/gsp.fish"
  zsh_completion "completions/_gsp"
  artifact "skills/gsp", target: "#{HOMEBREW_PREFIX}/share/gsp/skills/gsp"
  artifact "docs", target: "#{HOMEBREW_PREFIX}/share/gsp/docs"
end
