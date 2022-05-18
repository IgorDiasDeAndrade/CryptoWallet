module ApplicationHelper

    def locale
        if I18n.locale == :en
            "U.S English"
        else
            "Português brasileiro"
        end
    end

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end
end
