# checkbox-list

![Screen Shot 2021-03-13 at 13 17 51](https://user-images.githubusercontent.com/5887913/111030045-6f790280-8400-11eb-8eec-523703c380f9.png)

This is a simple excercise of checkbox list implementation using Combine and SwiftUI. In the project you'll find two different solutions. If you want, you can complete this extra assignment in order to gain better understanding of presented design patterns. Start with MVVM.

1. Fork this repository
  
2. Send button logic - first implement validation (button enabled if at least one checkbox checked). On press send, present an alert with a message listing all of the checked or unchecked items (whichever there is less of at the current moment). Don't count sections as items. `sendEnabled`, `sendPressed`, `alertIsPresented` and `alertText` are already present in the view model & attached to the view 

3. In group called `FakeNetworking` there's a class named `FakeInteractor`. It's cause is to provide our app with fake data for list items - sometimes they are nested into sections, sometimes it's just a plain list. The data model that this interactor uses is called `FakeModel` - take a good look at it's properties ;)

4. Add a "reload" button somewhere in the view. Make it fetch fake responses from our fake interactor and show results.

5. Make sure the checkbox logic is working correctly for both cases (plain and nested list). Remember about Select all & sections checkboxes functionality

6. (*) Try to complete the same task with Flat Solution

When you're done, create a pull request so we can discuss the results :)
