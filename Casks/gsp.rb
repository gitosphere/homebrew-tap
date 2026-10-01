cask "gsp" do
  version "0.2.0"
  sha256 "331c33200be0742b5c78be0de3ced5a23cfe88665df4190a62080bb58cd9adf3"

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
