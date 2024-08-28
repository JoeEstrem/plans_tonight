module ApplicationHelper

  def mood_options
    {
      "Casual" => "<p class='icon'>😊</p><p>Casual</p>".html_safe,
      "Classy" => "<p class='icon'>✨</p><p>Classy</p>".html_safe,
      "Dancing" => "<p class='icon'>🪩</p><p>Dancing</p>".html_safe,
      "Music" => "<p class='icon'>🎶</p><p>Music</p>".html_safe,
      "Unique" => "<p class='icon'>🎭</p><p>Unique</p>".html_safe,
      "Anything" => "<p class='icon'>🙌</p><p>Anything</p>".html_safe
    }
  end

  def alcohol_options
    {
      "Craft Beer" => "<p class='icon'>🍺</p><p>Craft Beer</p>".html_safe,
      "Lemon Sour" => "<p class='icon'>🍋</p><p>Lemon Sour</p>".html_safe,
      "Whiskey" => "<p class='icon'>🥃</p><p>Whiskey</p>".html_safe,
      "Cocktail" => "<p class='icon'>🍹</p><p>Cocktail</p>".html_safe,
      "Wine" => "<p class='icon'>🍷</p><p>Wine</p>".html_safe,
      "Anything" => "<p class='icon'>🥂</p><p>Anything</p>".html_safe
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
