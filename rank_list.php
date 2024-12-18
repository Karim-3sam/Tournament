
<!DOCTYPE html>
<html lang="en">
<?php
$pageTitle = "Rank List";
require "includes/head.php";
require_once 'database/connection.php';

// التحقق من ID المسابقة
if (!isset($_GET['id']) || empty($_GET['id'])) {
    die("Invalid tournament ID.");
}

$tournament_id = intval($_GET['id']);

// جلب بيانات المشاركين في هذه المسابقة
$stmt = $conn->prepare("SELECT username, points FROM Participates WHERE tournament_id = ? ORDER BY points DESC");
$stmt->bind_param("i", $tournament_id);
$stmt->execute();
$result = $stmt->get_result();

$tournament_query = $conn->prepare("SELECT title FROM Tournaments WHERE id = ?");
$tournament_query->bind_param("i", $tournament_id);
$tournament_query->execute();
$tournament_result = $tournament_query->get_result();
$tournament_title = $tournament_result->fetch_assoc()['title'];

?>

<body class="d-flex flex-column bg-light">
    <?php require "includes/navbar.php"; ?>

    <main class="content container py-5" data-aos="zoom-out">
        <h1 class="mb-4 text-center">Rank List for: <span class="text-primary"><?php echo htmlspecialchars($tournament_title); ?></span></h1>

        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Rank</th>
                        <th scope="col">Username</th>
                        <th scope="col">Points</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        $rank = 1;
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $rank++ . "</td>";
                            echo "<td>" . htmlspecialchars($row['username']) . "</td>";
                            echo "<td>" . htmlspecialchars($row['points']) . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='3' class='text-center'>No participants found for this tournament.</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </main>

    <?php require "includes/footer.php"; ?>
</body>
</html>
