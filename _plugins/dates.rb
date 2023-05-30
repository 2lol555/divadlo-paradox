module Jekyll
    module SlovakDates
        MONTHS = {"01" => "január", "02" => "február", "03" => "marec",
                "04" => "apríl", "05" => "máj", "06" => "jún",
                "07" => "júl", "08" => "august", "09" => "september",
                "10" => "október", "11" => "november", "12" => "december"}

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def slovakDate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end