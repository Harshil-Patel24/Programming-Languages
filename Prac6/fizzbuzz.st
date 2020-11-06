1 to: 100 do: [ :ii |
	(ii \\ 15 = 0) ifTrue: ['FIZZBUZZ!' printNl].
	(ii \\ 3 = 0) ifTrue: ['FIZZ' printNl]. 
	(ii \\ 5 = 0) ifTrue: ['BUZZ' printNl].
	((ii \\ 3 = 0) | (ii \\ 5 = 0)) ifFalse: [ii printNl].
].

