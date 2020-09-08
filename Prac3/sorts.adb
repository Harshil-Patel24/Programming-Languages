with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Sorts is
	procedure BubbleSort (A: in out Integer_Array) is 
		temp : Integer;
		size : Integer;
		swapped : Boolean;
	begin 

		size := A'length;

		loop
			swapped := false;
			for I in A'Range loop

				if A(I - 1) > A(I) then
					temp := A(I - 1);
					A(I - 1) := A(I);
					A(I) := temp;
					swapped := true;
				end if;

			end loop;

			exit when swapped = false;

		end loop;

	end BubbleSort;

	procedure PrintArray (ArrayToPrint: in Integer_Array) is
	begin
		for I in ArrayToPrint'Range loop
			Put( ArrayToPrint(I) );
			New_Line(1);
		end loop;
	end PrintArray;


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
		

end Sorts;
