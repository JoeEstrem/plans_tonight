module ApplicationHelper

  def mood_options
    {
      "Casual" => "<p class='icon'>😊</p><p>CASUAL</p>".html_safe,
      "Classy" => "<p class='icon'>✨</p><p>CLASSY</p>".html_safe,
      "Dancing" => "<p class='icon'>🪩</p><p>DANCING</p>".html_safe,
      "Music" => "<p class='icon'>🎶</p><p>MUSIC</p>".html_safe,
      "Unique" => "<p class='icon'>🎭</p><p>UNIQUE</p>".html_safe,
      "Anything" => "<p class='icon'>🙌</p><p>ANYTHING</p>".html_safe
    }
  end

  def alcohol_options
    {
      "Craft Beer" => "<p class='icon'>🍺</p><p>CRAFT BEER</p>".html_safe,
      "Lemon Sour" => "<p class='icon'>🍋</p><p>LEMON SOUR</p>".html_safe,
      "Whiskey" => "<p class='icon'>🥃</p><p>WHISKEY</p>".html_safe,
      "Cocktail" => "<p class='icon'>🍹</p><p>COCKTAIL</p>".html_safe,
      "Wine" => "<p class='icon'>🍷</p><p>WINE</p>".html_safe,
      "Anything" => "<p class='icon'>🥂</p><p>ANYTHING</p>".html_safe
    }
  end

  def smoke_options
    {
      true => "<p class='icon'>👍</p><p>YEAH</p>".html_safe,
      false => "<p class='icon'>👎</p><p>NAH</p>".html_safe
    }
  end

  def food_options
    {
      true => "<p class='icon'>🙋‍♂️</p><p>YES PLEASE</p>".html_safe,
      false => "<p class='icon'>🙅‍♂️</p><p>NO THANKS</p>".html_safe
    }
  end
end
