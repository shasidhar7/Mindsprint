todo_list = []
def add_todo():
    todo = input("Enter the todo you want: ")
    todo_list.append(todo)
    print(todo_list)
def remove_todo():
    num = int(input("give the index of todo: "))
    if num < (len(todo_list)):
        todo_list.pop(num)
    else:
        print("\nOut of range")
    
    print(todo_list)
def get_all_todos():
    print("\n",todo_list)
 
while True:
    option = int(input("\nEnter 1 to add todos:  \nEnter 2 to remove todos:  \nEnter 3 to display all todos:  \nEnter 4 to exit: "))
   
    if option == 1:
        add_todo()
    elif option == 2:
        remove_todo()
    elif option == 3:
        get_all_todos()
    elif option == 4:
        break
    else:
        print("Please enter the proper number or option: ")
    