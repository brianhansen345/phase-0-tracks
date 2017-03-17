highway = {
	first_car: {
		car_type: 'sedan',
		people: 'Jimmy'
	},
	second_car: {
		car_type: 'coupe',
		people: [
			'Jason',
			'Phillip'
		]
	},
	third_car: {
		car_type: 'truck',
		people: 'Leah'
	}
}

p highway[:first_car][:car_type]
highway[:third_car][:car_type] = ("lorrie")
p highway[:third_car][:car_type]
highway[:second_car][:people].push("Jimmy")
p highway[:second_car][:people]
highway[:third_car][:people].upcase!
p highway[:third_car][:people]