name "latex"
description "Latex environment"
run_list(
  "recipe[latex]",
  "recipe[latex-disser]"
)
default_attributes(
    "latex" => {
      "packages" => ["biblatex", " texlive-latex-base", "texlive-lang-cyrillic", "texlive-latex-extra"]
    }
)
