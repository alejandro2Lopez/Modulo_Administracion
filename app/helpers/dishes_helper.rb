module DishesHelper
  def method_Enable
    Dish.isEnables.keys.map do |isEnable|
      [t("activerecord.attributes.dish.isEnable.#{isEnable}"), isEnable]
    end
  end
end
