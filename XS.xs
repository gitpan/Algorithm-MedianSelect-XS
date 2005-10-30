#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Algorithm::MedianSelect::XS		PACKAGE = Algorithm::MedianSelect::XS		

void
median(...)
    PROTOTYPE: @
    INIT:
        long buffer, numbers[items];
	int i, is_sorted, median;
    PPCODE:
        if (items <= 1) {
	    croak("Require more than one argument");
	}
        for (i = 0; i < items; i++) {
	    numbers[i] = SvIV(ST(i));
	}
	do {
	    is_sorted = 1;
	    for (i = 0; i < (items-1); i++) {
	        if (numbers[i-1] < numbers[i] && numbers[i] < numbers[i+1]) 
		    continue;
	        if (numbers[i] > numbers[i+1]) {
	            buffer = numbers[i];
		    numbers[i] = numbers[i+1];
		    numbers[i+1] = buffer;
		    is_sorted = 0;
	        }
	    }
	} while (!is_sorted);
	if (items % 2 == 0) median = items / 2;
	else median = (items - 1) / 2;
	EXTEND(SP,1);
	PUSHs(sv_2mortal(newSViv(numbers[median])));
