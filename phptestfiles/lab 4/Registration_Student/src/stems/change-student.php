<?php
// Change a students information in the database.

/*
 * This is trickier than first imagined. Problem: row exists or row does not exist.
 * This site has a good explanation:
 * https://chartio.com/resources/tutorials/how-to-insert-if-row-does-not-exist-upsert-in-mysql/
 * INSERT INTO ... ON DUPLICATE KEY UPDATE
 */
