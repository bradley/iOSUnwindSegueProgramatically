How to Unwind Segue Programatically
===========

1. In your storyboard create two view controllers.

2. Subclass UIViewController twice, once for each of the view
controllers in your storyboard.

3. Connect these view controllers to the view controllers in your
storyboard.

4. Make a segue between the first view controller and the second by
control+dragging from the first to the second. 

5. Click on the segue you created and give it an identifier in the
attributes inspector.

6. Make a button on the first view controller and link it to an IBAction
in its UIViewController subclass. 

7. When this button is pressed, the second storyboard should appear. To
make this happen (we are doing it programatically) put the following
into the implementation of the action you just created:
    
        [self performSegueWithIdentifier:@"nameOfTheSegueBetweenOneAndTwo" sender:self];

8. Create a second method in the implemention of the first view
controller with the following:
    
        - (IBAction)returnToStepOne:(UIStoryboardSegue *)segue {
            NSLog(@"And now we are back.");
        }

9. This method will work to unwind any view controller back to this view
controller. Notice that we implement the method *in the view controller
we wish to return to*.

10. Go back to the storyboard. Focus in on the second view controller.
If it is active, you should see a dark bar beneath it with 3 symbols on
it. One of these is orange and when hovered over will show the name of
the UIViewController subclass that this view controller represents.
Control drag from this symbol woth the green symbol that means 'Exit'.
You should see all available segue unwinds, which XCode automatically
enumerates when you create segue unwind implementations inside
UIViewController subclasses that you have shown on your stroryboard.
Hence, you should see the segue 'returnToStepOne' as an option. Select
it.

11. In your storyboard's document outline, find the section for the
second view controller. You should see an item listed below it with a
grey symbol that says something like "Unwind segue from ... to Exit."
Click on this item.  
    
    **Important and easily missed step follows!**

12. On the right side of your storyboard, in the attributes inspector,
you should see two fields. One for 'Identifier' and one for 'Action'.
In most cases, the 'Action' field will have the text 'returnToStepOne:',
which is what we want, but the 'Identifier' field will be blank. Fill
this field with the text: 'returnToStepOne' (note that we leave out
the colon).

13. Create a button on the second view controller and link it to an
IBAction in its UIViewController subclass. 

14. In the implementation for the method you just created, put the
following code:

        [self performSegueWithIdentifier:@"returnToStepOne" sender:self];

15. Run the application. You should now be able to unwind from the
second view controller to the first.
