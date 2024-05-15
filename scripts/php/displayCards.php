<?php
function displayCards(mysqli_result|bool $bookResultSet): void
{
    while ($row = $bookResultSet->fetch_assoc())
    {
        ?>
        <a href="/viewBook.php?bookId=<?php echo $row['isbn']; ?>" class="card-link flex-card">
            <img src="/images/bookicons/<?php echo $row['imageFilename']; ?>" alt="Book Image" class="center">
            <h3 class="center">
                <?php
                # enforces 55 chars max
                $title = $row['title'];
                echo (strlen($title) > 53) ? substr($title, 0, 50) . '...' : $title;
                ?>
            </h3>
            <h4 class="center">By
                <?php
                $author = $row['compositeName'];
                if (!empty($author))
                    echo (strlen($author) > 25) ? substr($author, 0, 22) . '...' : $author;
                else
                    echo '[No Author]';
                ?>
            </h4>
            <h5 class="center">$<?php echo number_format($row['price'], 2); ?></h5>
            <h4 class="center">View ></h4>
        </a>
        <?php
    }
} ?>