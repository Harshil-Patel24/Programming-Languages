#include <string> 
#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

const int NUM_BOOKS = 200; 

class Book 
{ 
    private:  
        int bookID; 
        std::string bookname; 
        std::string ISBN; 
 
     public: 
        int getBookID(){return bookID;}
        std::string getBookName(){return bookname;} 
        std::string getISBN(){return ISBN;}
 
        void setBookID(int inID){bookID = inID;} 
        void setBookName(std::string inName){bookname = inName;} 
        void setBookISBN(std::string inISBN){ISBN = inISBN;}

		void display()
		{
			cout<<"ID: "<<to_string(bookID)<<" Book name is: "<<bookname<<" ISBN: "<<ISBN<<"\n";
		}
 
        Book(){} 
		Book(int inID, std::string inName, std::string inISBN)
		{
			setBookID(inID);
			setBookName(inName);
			setBookISBN(inISBN);
		}
};

void displayAll(Book books[NUM_BOOKS])
{
	for(int ii = 0; ii < NUM_BOOKS; ii++)
	{
		cout<<"ID: "<<to_string(books[ii].getBookID())<<" Book name is: "<<books[ii].getBookName()<<" ISBN: "<<books[ii].getISBN();
	}
}

void swap(Book one[NUM_BOOKS], Book two[NUM_BOOKS])
{
cout<<"Swapping: "<<to_string((*one).getBookID())<<" with "<<to_string((*two).getBookID())<<"\n";
	Book temp = *one;
	*one = *two;
	*two = temp;
}

int partition(Book books[NUM_BOOKS], int left, int right)
{
	int pivot = books[right].getBookID();
	int ii = (left - 1);

	for(int jj = left; jj < right; jj++)
	{
		if(books[jj].getBookID() < pivot)
		{
			ii++;

			swap(&books[ii], &books[jj]);
		}
	}

	swap(&books[ii + 1], &books[right]);
	return (ii + 1);
}

void qSort(Book books[NUM_BOOKS], int left, int right)
{
	if(left < right)
	{
		int idx = partition(books, left, right);
		
		qSort(books, left, idx - 1);
		qSort(books, idx + 1, right);
	}
}

void sort(Book* books)
{

	qSort(books, 0, NUM_BOOKS - 1);	
}

int main()
{
	Book books[NUM_BOOKS];
	srand((unsigned) time(0));

	for(int ii = 0; ii < NUM_BOOKS; ii++)
	{

		int randInt = rand() % 500;
		books[ii] = Book(randInt, to_string(ii), to_string(ii)); 
	}

	displayAll(books);
	

	sort(books);


	for(int ii = 0; ii < sizeof(books)/sizeof(books[0]); ii++)
	{
		books[ii].display();
	}

	return 0;
}
