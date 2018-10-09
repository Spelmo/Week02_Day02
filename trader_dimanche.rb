# a=array, trouver les meilleurs jours d'achat et revente
# jour revente après jour achat

def trader_du_dimanche(arr)
  buy = 0
  sell = 0
  min = 0
  profit = 0

  0.upto(arr.length) do |i|
    if arr[i].to_i < arr[min].to_i
      min = i
    else if arr[i].to_i - arr[min].to_i > profit
    buy = min
    sell = i
    profit = arr[i].to_i - arr[min].to_i
  end
  end
end
  return "Achète jour #{buy} - vend jour #{sell} pour gagner $#{profit}"
end

arr = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts trader_du_dimanche(arr)


# 2eme exo: un array de hash, trouver pour chaque key, la bonne pair de value

def trader_du_lundi(arr)
array = []
    arr[0].length.times do |j|
        arr.length.times do |i|
            array << arr[i].values[j]
        end
        puts "#{trader_du_dimanche(array)}, pour l'entreprise #{j + 1}"
        array = []
    end
end


jour_1 = { :goo => 15, :mmm => 14, :adbe => 12, :ea => 13, :ba => 8, :ko => 10, :xom => 20, :gps => 7, :mcd => 11, :dis => 15, :crm => 6, :jnj => 10 }
jour_2 = { :goo => 8, :mmm => 20, :adbe => 3, :ea => 10, :ba => 5, :ko => 19, :xom => 12, :gps => 6, :mcd => 15, :dis => 9, :crm => 10, :jnj => 17 }
jour_3 = { :goo => 3, :mmm => 8, :adbe => 15, :ea => 5, :ba => 10, :ko => 5, :xom => 15, :gps => 13, :mcd => 10, :dis => 18, :crm => 5, :jnj => 14 }
jour_4 = { :goo => 17, :mmm => 3, :adbe => 6, :ea => 9, :ba => 15, :ko => 6, :xom => 8, :gps => 1, :mcd => 10, :dis => 15, :crm => 18, :jnj => 3 }
jour_5 = { :goo => 8, :mmm => 18, :adbe => 4, :ea => 6, :ba => 15, :ko => 18, :xom => 3, :gps => 12, :mcd => 19, :dis => 3, :crm => 7, :jnj => 9 }
jour_6 = { :goo => 10, :mmm => 12, :adbe => 8, :ea => 3, :ba => 18, :ko => 20, :xom => 5, :gps => 11, :mcd => 3, :dis => 9, :crm => 8, :jnj => 15 }
jour_7 = { :goo => 17, :mmm => 14, :adbe => 2, :ea => 17, :ba => 7, :ko => 13, :xom => 1, :gps => 15, :mcd => 15, :dis => 10, :crm => 9, :jnj => 17 }

h = [jour_1, jour_2, jour_3, jour_4, jour_5, jour_6, jour_7]

trader_du_lundi(h)
