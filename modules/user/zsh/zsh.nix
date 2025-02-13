{config, lib, pkgs, inputs, ...}:

{
	programs.zsh = {
    	enableCompletion = true;
        enable = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        oh-my-zsh = {
        	enable = true;
        	theme = "robbyrussell";
        };

		shellAliases = {
			"mz-update" = "cd ~/mz-dotfiles && nix flake update && home-manager switch --flake .#mz && sudo paru -Syu && cd";
			"mz-switch" = "cd ~/mz-dotfiles && home-manager switch --flake .#mz && cd";
			"mz-news" = "cd ~/mz-dotfiles && home-manager news --flake .#mz && cd";
		};
    };
}
