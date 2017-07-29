tiny_zoo = {
	mammals: {
		number: 3,
		species: {
			panda: {
				number: 5,
				food: [
					'bamboo'
				],
				colors: [
					'black',
					'white'
				]
			},
			giraffe: {
				number: 4,
				food: [
					'fruits',
					'vegetables'
				],
				colors: [
					'yellow',
					'brown'
				]
			},
			oryx: {
				number: 6,
				food: [
					'grass'
				],
				colors: [
					'black',
					'white'
				]
			}
		}
	}
}

p tiny_zoo[:mammals][:species][:oryx][:food]
p tiny_zoo[:mammals][:species][:panda][:colors]
p tiny_zoo[:mammals][:species][:giraffe][:number]
