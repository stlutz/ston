*ston-squeak-core
translateTo: anOffset

	self dayMonthYearDo: [ :day :month :year|
		^ self class
			year: year
			month: month
			day: day
			hour: self hour
			minute: self minute
			second: self second
			nanoSecond: self  nanoSecond
			offset: anOffset asDuration ]
