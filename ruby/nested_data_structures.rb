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
highway[:third_car][:car_type].push("lorrie")
p highway[:third_car][:car_type]