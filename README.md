# tandana
 Folk Performing Arts of India - A SILC Project
Welcome to Dance Archive, a vibrant web platform dedicated to celebrating dances from around the world. Our mission is to compile a comprehensive database of dance forms, making them accessible to everyone from dance enthusiasts to professionals seeking inspiration. 

## Features

- **Explore Dances**: Browse through a rich collection of dances with detailed descriptions and video illustrations.
- **Manage Content**: Add, edit, and remove dance information through a user-friendly admin interface.
- **Engage with Community**: Suggest new dances and contribute to the growing database.
- **Developer Friendly**: Utilize our API to fetch dance data for your own applications.

## Getting Started

This section will guide you through the setup and deployment of Dance Archive using XAMPP.

### Prerequisites

- XAMPP (with PHP and MySQL)
- Git (for version control)

### Installation

1. Clone the repository to your local machine: https://github.com/draytht/tandana 
2. Navigate to the XAMPP htdocs directory and paste the cloned project folder.
3. Start the XAMPP Control Panel and ensure that the Apache and MySQL services are running.

### Database Setup

1. Open the XAMPP Control Panel and click on 'Admin' next to MySQL to open phpMyAdmin.
2. Create a new database named `tandana_db`.
3. Import the database schema located in `database/db_configuration.sql`.

### Running the Server

With the services running, open your web browser and navigate to `http://localhost/tandana2`. The Dance Archive platform should now be accessible.

## Contribution

We encourage contributions! If you want to suggest a feature or report a bug, please follow the steps below:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## Development Tasks

Our current and completed tasks are tracked using a Kanban board on Trello for better visibility and organization. Here are some snippets of our ongoing efforts:

For a complete overview, refer to the project’s Kanban board.

## Acknowledgments

- Than Tran for maintaining consistency in UI/UX design.
- John for documentation and refactoring efforts.
- Marwan for intergating chatGPT into chatbox.
- Ilyas for generating API request.

We are proud of the collaborative effort that has made Dance Archive a reality. Join us in this ongoing celebration of dance and cultural diversity!
