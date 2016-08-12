olympic_events = {
	gymnastics:{
	 'men' => ['high-bars',
	 		   'pummel horse',
	 		   'rings',	 		   
	 		  ],
	 'women' => ['uneven bars',
	 			 'balance beam'
	 			],
	 'both sex' => ['floor',
	 				'vault'
	 			   ]	 
	},
	swimming:[
	 '100m IM',
	 '200m free',
	 '400 free relay'
	],
	track_and_field:[
	 '100m dash',
	 'marathon',
	 '100m hurdles'
	]
}
p olympic_events

#printing the 2nd item in the 'men' array within gymnastics{}
p olympic_events[:gymnastics]['men'][1]

#adding 'p-bars' to the men gymnastic events
olympic_events[:gymnastics]['men'].push('p-bars')
p olympic_events[:gymnastics]['men']

#updating the '100m im' event to '200m fly'
olympic_events[:swimming][0] = '200m fly'
p olympic_events[:swimming]

#printing to view the new nested data structure
p olympic_events

