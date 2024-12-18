<!DOCTYPE html>
<html lang="en">
<?php
$pageTitle = "Rank Lists";
require "includes/head.php";
require_once 'database/connection.php';
require_once 'database/tournamentQuery.php';
?>

<body class="d-flex flex-column bg-light">
    <?php require "includes/navbar.php"; ?>

    <main class="content container py-5" data-aos="zoom-out">
        <h1 class="mb-4 text-center">All Rank Lists</h1>

        <?php
        // الحصول على كل المسابقات
        $tournament = new Tournament($conn);
        $tournaments = $tournament->getAllTournaments();

        echo '<div class="row g-4">';
        foreach ($tournaments as $t) {
            echo '<div class="col-12 col-md-6 col-lg-4">';
            echo '<div class="card shadow-sm">';
            echo '<div class="card-body">';
            echo '<h5 class="card-title text-primary">' . htmlspecialchars($t['title']) . '</h5>';
            echo '<p class="card-text text-muted">View the rank list of this tournament</p>';
            echo '<a href="rank_list.php?id=' . htmlspecialchars($t['id']) . '" class="btn btn-primary">View Rank List</a>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }
        echo '</div>';
        ?>
    </main>

    <?php require "includes/footer.php"; ?>
</body>
</html>
