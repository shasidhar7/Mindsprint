package com.mindsprint.assignment;

import java.util.Scanner;

public class LibraryManagement {
    private static Scanner sc = new Scanner(System.in);
    private static Library library = new Library(5);

    public static void main(String[] args) {
        while (true) {
            System.out.println("\nLibrary Management System");
            System.out.println("-------------------------");
            System.out.println("1. Add Book");
            System.out.println("2. Search Book by Title");
            System.out.println("3. Find Most Expensive Book");
            System.out.println("4. Display All Books");
            System.out.println("5. Exit");
            System.out.print("Choose an option: ");
            int choice = sc.nextInt();
            sc.nextLine(); // Consume the newline character

            switch (choice) {
                case 1:
                    addBookToLibrary();
                    break;
                case 2:
                    searchBookInLibrary();
                    break;
                case 3:
                    library.findMostExpensiveBook();
                    break;
                case 4:
                    library.displayBooks();
                    break;
                case 5:
                    System.out.println("Exiting the system. Goodbye!");
                    sc.close();
                    return;
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }

    private static void addBookToLibrary() {
        System.out.println("Book Id: ");
        int bookId = sc.nextInt();
        sc.nextLine(); // Consume the newline character

        System.out.println("Title: ");
        String title = sc.nextLine();

        System.out.println("Author: ");
        String author = sc.nextLine();

        System.out.println("Price: ");
        double price = sc.nextDouble();
        sc.nextLine(); // Consume the newline character

        Book book = new Book(bookId, title, author, price);
        library.addBook(book);
    }

    private static void searchBookInLibrary() {
        System.out.println("Enter the title of the book to search: ");
        String title = sc.nextLine();
        library.searchBookByTitle(title);
    }
}
