with Sorts; use Sorts;

procedure Test is
	arrR : Integer_Array := (5,3,7,12,2,6,3,5,7,10);
	arrA : Integer_Array := (1,2,3,4,5,6,7,8,9,10);
	arrD : Integer_Array := (10,9,8,7,6,5,4,3,2,1);
begin

	BubbleSort( arrR );
	PrintArray( arrR );

	BubbleSort( arrA );
	PrintArray( arrA );
	
	BubbleSort( arrD );
	PrintArray( arrD );

end Test;
