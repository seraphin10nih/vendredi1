@gpl = ["Lipides","Glucides","Protéines"]
@kcal_welsh = [38.4, 18.3, 36.3]
@kcal_normal = [9, 4, 4]
@tambatra = @gpl.zip(@kcal_welsh).to_h
@valiny = 0
def calcul(calory)
	kali = @gpl.zip(@kcal_normal).to_h
	calory.each{|x,y| @valiny += kali[x]*y}
	puts @valiny
end
calcul(@tambatra)