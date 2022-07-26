module OrderDetailsHelper
    def states
        OrderDetail.states.keys.map do |state|
            [t("activerecord.attributes.order.states.#{state}"),state]
        end
    end
end
