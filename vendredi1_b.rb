@gpl = ["Lipides","Glucides","Protéines"]
sakafo = ['welsh', 'frites', 'biere']
kcal_welsh = [38.4, 18.3, 36.3]
kcal_frites = [15, 41, 3.4]
kcal_biere = [0, 25, 4]
kcal_normal = [9, 4, 4]

welsh = @gpl.zip(kcal_welsh).to_h
frites = @gpl.zip(kcal_frites).to_h
biere = @gpl.zip(kcal_biere).to_h
tambatra = [welsh, frites, biere]

@minaly = @gpl.zip(kcal_normal).to_h

mampiray = sakafo.zip(tambatra).to_h
@valiny = 0

def meal(fitoloha)
	fitoloha.each{|iray,roa| roa.each{|a,b| @valiny += @minaly[a]*b }}
	puts @valiny
end
meal(mampiray)



=begin
	
rescue Exception => e
	
end
#weight_watchers = @gpl.zip(@kcal_welsh).to_h
#@valiny = 0
#def calcul(calory)
#	kali = @gpl.zip(@kcal_normal).to_h
#	calory.each{|x,y| @valiny += kali[x]*y}
#	puts @valiny
#end
frity = @gpl.zip(@kcal_frites).to_h
@valiny2 = 0
def calcul2 (sad)
	kali2 = @gpl.zip(@kcal_normal).to_h
	sad.each{|x,y| @valiny2 += kali2[x]*y}
	puts @valiny2
end
#biere = @gpl.zip (@kcal_biere).to_h
#@valiny3 = 0-y
#	kali3 = @gpl.zip(@kcal_normal).to_h
#	mamo.each{|x,y| @valiny3 += kali3[x]*y}
#	puts valiny3
#end
#calcul(weight_watchers)
calcul2(frity)
#calcul3(biere)
def addition("@valiny", "@valiny3", "@valiny2").to_i
	@valiny3+@valiny2+@valiny
end
=end