# ViewMAPP
ViewMAPP using TCA with SwiftUI and SwiftData


I used SwiftUI to create the views and SwiftData for data storage because it is newer, works effectively with SwiftUI, and requires fewer features than CoreData.

The main view contains three options for performing different options.

The project is designed to perform three key functions, each contributing to its overall functionality and user experience.

- Map View: The first option displays a map view with coordinates obtained from an API. An annotation is added to represent the coordinates' place visually. This option remains inactive until the data is fetched.

- Data Storage: The second option shows the records fetched from the API. A timestamp is added to identify each register individually. When the user selects a row, the app shows the Map View with the coordinates from that row. The records are saved using SwiftData as it is more efficient and seamless with SwiftUI than CoreData. This option is disabled until the data is fetched using the third option.

- Fetch data: The third option fetches data from the API using the composable architecture with SwiftUI.


The following video shows the app's functionality. 




https://github.com/user-attachments/assets/aa854d46-4941-4a26-8aae-4e40e84bda8c




UIUnitTests were implemented to test the navigation flow and views.


<img width="1395" alt="2024-08-31 at 11 56 25 a m" src="https://github.com/user-attachments/assets/a48d803e-2571-428d-b324-06bedc2fa6a8">
<img width="1394" alt="2024-08-31 at 11 56 22 a m" src="https://github.com/user-attachments/assets/415baec2-a59f-4a82-b434-59a670fefe83">



