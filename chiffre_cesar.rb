def chiffre_de_cesar(str, ind)
  ascii = str.chars.map { |v| v.ord }
  # transforme mon string en array
  # et change toutes les lettres en chiffres ascii
  ascii.map do |number|
    # Boucle pour les lettre minuscules
    if (97..122).include?(number)
      # > Si c'est une lettre et pas un caractere type , . ou autre
      if (number + ind) > 122
        # pour boucler sur les lettres uniquement
        # et pas renvoyer des @ ou autres au lieu d'une lettre
        number = 96 + ind - (122 - number)
      else
        number += ind
      end
    end
    # Boucle pour les majuscules
    if (65..90).include?(number)
      if (number + ind) > 90
        number = 64 + ind - (90 - number)
      else
        number += ind
      end

    else number
   end
 end.map { |v| v.chr }.join
end

puts chiffre_de_cesar("J'aime les patates", 2)

# ASCII A=65  Z=90 a=97 z=122
