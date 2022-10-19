local onetime = false
function onUpdatePost()
    if onetime == false then
    setProperty('botplayTxt.text', 'BOTPLAY')
    setProperty('RatingTxt.text', 'BOTPLAY')
    
    onetime = true
    end

    if ratingName == '?' then
        setRatingName('CULIAO SECO') --When there are no notes
    end
    if ratingName == 'You Suck!' then
        setRatingName('tonto ql') --From 0% to 19% of accuracy
    end
    if ratingName == 'Shit' then
        setRatingName('uuu como tan malo') --From 20% to 39% of accuracy
    end
    if ratingName == 'Bad' then
        setRatingName('weon malo') --From 40% to 49% of accuracy
    end
    if ratingName == 'Bruh' then
        setRatingName('aweonao') --From 50% to 59% of accuracy
    end
    if ratingName == 'Meh' then
        setRatingName('decente') --From 60% to 68% of accuracy
    end
    if ratingName == 'Nice' then
        setRatingName('ta bien') --69% of accuracy :bruh:
    end
    if ratingName == 'Good' then
        setRatingName('wena') --From 70% to 79% of accuracy
    end
    if ratingName == 'Great' then
        setRatingName('pulento') --From 80% to 89% of accuracy
    end
    if ratingName == 'Sick!' then
        setRatingName('wn bueno') --From 90% to 99% of accuracy
    end
    if ratingName == 'Perfect!!' then
        setRatingName('CULIAO SECO') --100% of accuracy
    end
end