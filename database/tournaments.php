<?php
include('db.php');

$sql = "SELECT * FROM tournaments";
$result = $conn->query($sql);

echo '<div class="container mt-5">';
echo '<h2>Tournaments</h2>';
echo '<table class="table">';
echo '<thead><tr><th>Name</th><th>Type</th><th>Created At</th></tr></thead>';
echo '<tbody>';

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row['name'] . '</td>';
        echo '<td>' . $row['type'] . '</td>';
        echo '<td>' . $row['created_at'] . '</td>';
        echo '</tr>';
    }
} else {
    echo '<tr><td colspan="3">No tournaments available.</td></tr>';
}

echo '</tbody></table>';
echo '</div>';

$conn->close();
?>
