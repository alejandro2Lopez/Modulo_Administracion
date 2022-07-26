module ClientsHelper
  def method_Block
    Client.blocks.keys.map do |block|
      [t("activerecord.attributes.dish.isEnable.#{block}"), block]
    end
  end
end
