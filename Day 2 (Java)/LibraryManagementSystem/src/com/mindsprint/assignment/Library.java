package com.mindsprint.assignment;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class Library {
    private Book[] books;
    private int count;

    public Library(int size) {
        books = new Book[size];
        count = 0;
    }

    public void addBook(Book book) {
        if (count < books.length) {
            books[count] = book;
            count++;
        } else {
            System.out.println("Library is full!");
        }
    }

    public void displayBooks() {
        if (count == 0) {
            System.out.println("No books available in the library.");
            return;
        }

        for (Book b : books) {
            if (b != null) {
                b.displayBook();
            }
        }
    }


    public void searchBookByTitle(String title) {
        if (count == 0) {
            System.out.println("No books available in the library.");
            return;
        }

        boolean found = false;
        for (Book book : books) {
            if (book != null && book.getTitle().toLowerCase().contains(title.toLowerCase())) {
                if (!found) {
                    System.out.println("\nBook(s) found:");
                }
                book.displayBook();
                found = true;
            }
        }

        if (!found) {
            System.out.println("\nNo books found with the title: " + title);
        }
    }

    public void findMostExpensiveBook() {
        if (count == 0) {
            System.out.println("No books available in the library.");
            return;
        }

        Book expensiveBook = books[0];
        for (Book book : books) {
            if (book != null && book.getPrice() > expensiveBook.getPrice()) {
                expensiveBook = book;
            }
        }
        System.out.println("\nMost Expensive Book is:");
        expensiveBook.displayBook();
    }
}
