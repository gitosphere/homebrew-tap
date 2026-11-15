cask "gsp" do
  version "0.18.0"
  sha256 "c08d47e0ba9fc400f6a2b51c4d2be34584f12570a4ff36ab58d944a618113ce2"

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
