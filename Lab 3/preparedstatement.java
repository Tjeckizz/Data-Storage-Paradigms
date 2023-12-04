//package Datalagring;

import java.sql.*;

public class preparedstatement {

    public static void main(String[] args) {
        try {
            Class.forName("org.postgresql.Driver"); // Load PostgreSQL JDBC driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return;
        }

        String jdbc = "jdbc:postgresql://localhost:5432/sgms";
        String username = "postgres";
        String password = "test";

        // Replace with your specific start time
       // String specificStartTime = CURRENT_DATE;

        try (Connection connection = DriverManager.getConnection(jdbc, username, password)) {
        	String query = "SELECT " +
        	        "  TO_CHAR(l.start_time, 'Dy') AS day, " +
        	        "  l.target_genre AS genre, " +
        	        "  CASE " +
        	        "    WHEN (CAST(l.max_student_limit AS INTEGER) - COALESCE(COUNT(sl.lesson_id), 0)) = 0 THEN 'No Seats' " +
        	        "    WHEN (CAST(l.max_student_limit AS INTEGER) - COALESCE(COUNT(sl.lesson_id), 0)) BETWEEN 1 AND 2 THEN '1 or 2 Seats' " +
        	        "    ELSE 'Many Seats' " +
        	        "  END AS no_of_free_seats " +
        	        "FROM " +
        	        "  lessons l " +
        	        "LEFT JOIN " +
        	        "  student_lessons sl ON l.lesson_id = sl.lesson_id " +
        	        "WHERE " +
        	        "  l.start_time >= CURRENT_DATE " +
        	        "  AND l.start_time < (CURRENT_DATE + INTERVAL '1 week') " +
        	        "  AND l.lesson_type = 'Ensemble' " +
        	        "GROUP BY " +
        	        "  l.start_time, l.target_genre, l.max_student_limit " +
        	        "ORDER BY " +
        	        "  l.start_time, TO_CHAR(l.start_time, 'Dy'), l.target_genre";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
               // preparedStatement.setString(1, specificStartTime);
               // preparedStatement.setString(2, specificStartTime);

                System.out.println("Executing SQL query...");
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    System.out.println("Query executed successfully.");
                    while (resultSet.next()) {
                        String day = resultSet.getString("day");
                        String genre = resultSet.getString("genre");
                        String noOfFreeSeats = resultSet.getString("no_of_free_seats");

                        System.out.printf("Day: %s, Genre: %s, No of Free Seats: %s%n", day, genre, noOfFreeSeats);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
