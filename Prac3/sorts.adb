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

			for I in (A'First + 1) .. (A'Last) loop
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

end Sorts;
