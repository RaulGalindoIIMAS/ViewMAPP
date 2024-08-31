# ViewMAPP
ViewMAPP using TCA with SwiftUI and SwiftData


I used SwiftUI to create the views and SwiftData for data storage because it is newer, works effectively with SwiftUI, and requires fewer features than CoreData.

The main view contains three options for performing different options.

The project is designed to perform three key functions, each contributing to its overall functionality and user experience.

- Map View: The first option displays a map view with coordinates obtained from an API. An annotation is added to represent the coordinates' place visually. This option remains inactive until the data is fetched.

- Data Storage: The second option shows the records fetched from the API. A timestamp is added to identify each register individually. When the user selects a row, the app shows the Map View with the coordinates from that row. The records are saved using SwiftData as it is more efficient and seamless with SwiftUI than CoreData. This option is disabled until the data is fetched using the third option.

- Fetch data: The third option fetches data from the API using the composable architecture with SwiftUI.


The following video shows the app's functionality. 





UIUnitTests were implemented to test the navigation flow and views.

