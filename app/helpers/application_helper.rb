module ApplicationHelper

	#Here, will have a master list of answers,and the user's quess will be checked against that list.

	def check_answer(answer)

		citylist = ["Atlanta", "Asheville", "Charlotte", "Raleigh"]

		correct = false

		citylist.each do |c|
			if answer == c
				correct = true
			end
		end
		return correct
	end

	def check_for_dup(answer, database)

		is_dup = false

		database.each do |d|
			if answer == d.name
				is_dup = true
			end
		end
		return is_dup
	end
	

end