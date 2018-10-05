@gpl = ["Lipides","Glucides","Protéines"]
sakafo = ['welsh', 'frites', 'biere']
kcal_welsh = [38.4, 18.3, 36.3]
kcal_frites = [15, 41, 3.4]
kcal_biere = [0, 25, 4]
kcal_normal = [9, 4, 4]

vidiny = [ {:pri=> 15}, {:pri =>4}, {:pri=> 5}]
prixbe = sakafo.zip(vidiny).to_h

@prix = Hash.new()
@prix ['prix'] = prixbe

welsh = @gpl.zip(kcal_welsh).to_h
frites = @gpl.zip(kcal_frites).to_h
biere = @gpl.zip(kcal_biere).to_h
tambatra = [welsh, frites, biere]

@minaly = @gpl.zip(kcal_normal).to_h

@sakafo = sakafo.zip(tambatra).to_h

@sakafo['manga'] = @prix
@valiny = 0 
puts @sakafo
def meal_price(tambatra)
	tambatra['manga']['prix'].each{|a,b| @valiny += b[:pri]}
	puts @valiny
end
meal_price(@sakafo)
