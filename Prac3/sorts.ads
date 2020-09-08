package Sorts is
	type Integer_Array is Array (Natural range<>) of Integer;

	procedure bubblesort(A: in out Integer_Array);
	procedure PrintArray(ArrayToPrint: in Integer_Array);

end Sorts;
