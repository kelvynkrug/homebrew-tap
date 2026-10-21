# Cask do Maestro para o tap do Homebrew (vai em Casks/maestro.rb no repo do tap).
# Atualizar a cada release: version, sha256 (saída do scripts/release.sh) e URL se mudar.
cask "maestro" do
  version "0.1.1"
  sha256 "fdbd4b62c8533423e86b17faba2dc30646038e855680046c53dd345545529bb1"

  url "https://github.com/kelvynkrug/maestro/releases/download/v#{version}/Maestro-#{version}.zip"
  name "Maestro"
  desc "Controle de volume e saída de áudio por aplicativo"
  homepage "https://github.com/kelvynkrug/maestro"

  depends_on macos: :sequoia

  app "Maestro.app"

  zap trash: "~/Library/Preferences/com.kelvynkrug.maestro.plist"
end
