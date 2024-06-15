 * DATE: 2024-06-17
 * AUTHOR: Griffin JM Bur
 * TASK: Homework 1

capture log close 
     // this closes any open logs; capture tells Stata 
     // "don't show an error if this is impossible"
     // use "capture" sparingly!
cd "~/desktop/code/soc360su24"
     // I'll explain how to get this.
     // The directory is just your folder for the course. 
log using "2024-06-17-Bur-G-HW1", text replace
     // "replace" just tells Stata to save over the old copy
     // "text" makes it readable to humans
clear all 

// The questions about linemen
import delimited using ///
	"https://raw.githubusercontent.com/griffinjmbur/soc360su24public/mainSU24/Week1/linemen.csv"
	
	* Some commentary here
	
clear all
	
// The questions about pain

import delimited using ///
	"https://raw.githubusercontent.com/griffinjmbur/soc360su24public/mainSU24/Week1/ex02-06bonding.csv"
bysort condition: sum bonding, d

	* Some commentary here
