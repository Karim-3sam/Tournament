<!DOCTYPE html>
<html lang="en">
<?php
$pageTitle = "Tournaments";
require "includes/head.php";
?>
<body class="d-flex flex-column bg-light">

    <!-- Navbar -->
    <?php require "includes/navbar.php"; ?>

    <main class="content container py-5" data-aos="zoom-out">
        <div class="hero_section text-center mb-5" >
            <h1 class="display-4 fw-bold">Welcome to <span class="text-primary">Tournaments!</span></h1>
            <p class="lead text-muted">Enter the tournaments you like from here</p>
        </div>

        <?php
        require_once 'database/connection.php';
        require_once 'database/tournamentQuery.php';
        if (isset($_COOKIE['participate_id'])) {
            header('Location: ' . 'questions.php');
        }

        $tournament = new Tournament($conn);
        $tournaments = $tournament->getAllTournaments();
        echo '<div class="row g-4">';
        foreach ($tournaments as $t) {
            echo '<div class="col-12 col-md-6 col-lg-4">';
            echo '  <div class="card shadow-sm border-0 h-100">';
            echo '      <div class="card-body d-flex flex-column">';
            echo '          <h5 class="card-title fw-bold text-primary">' . htmlspecialchars($t['title']) . '</h5>';
            echo '          <p class="card-text text-muted">';
            echo '              <i class="bi bi-person-fill"></i> ' . htmlspecialchars($t['spaces_left']) . ' spaces left';
            echo '          </p>';
            if ($t['spaces_left'] >= 1) {
                echo '      <a href="join_tournament.php?id=' . htmlspecialchars($t['id']) . '" class="btn btn-primary mb-2">JOIN NOW!</a>';
            } else {
                echo '      <button class="btn btn-outline-secondary mb-2" disabled>No Spaces Available</button>';
            }
            echo '          <a href="rank_list.php?id=' . htmlspecialchars($t['id']) . '" class="btn btn-secondary">RANK LIST</a>';
            echo '      </div>';
            echo '  </div>';
            echo '</div>';
        }
        echo '</div>';
        ?>
    </main>

    <!-- Footer -->
    <?php require "includes/footer.php"; ?>
</body>
</html>
