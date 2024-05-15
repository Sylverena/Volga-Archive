<div class="column right">
    <?php
    /*
     * This code needs to determine which RHS content to display given:
     * 1. Which LHS menu item the user selects
     * 2. Whether a GET or POST request is sent
     * 3. Which RHS to display give the two above
     *
     * Possible algorithm
     * ------------------
     * Check to see if we have a GET or POST command
     *     -> POST command means we need to get/insert/delete data from the db
     *        Todo 6: you need to implement the POST logic below.
     *        For To_do 5, you do not need to do anything here.
     *
     *        Given the 'page' and the 'command'
     *            include the proper PHP command that goes to the database and displays the results
     *
     *            Example:
     *            If the command is 'search'
     *            Then include_once 'src/stems/search-student.php'
     *
     *        You will need to to this for 'add', 'change', delete', and 'search'
     * 
     * else
     *     -> GET command means we need to load a form or some such...
     *        Todo 5: you need to implement the GET logic below.
     *
     *        If the client has sent a command... (i.e., GET) given the 'c' parameter
     *        Then Display the correct page given the 'e' parameter.
     *             Example:
     *             If the 'e' parameter is 'search'
     *             Then include_once 'src/html/search-student-form.html'
     *             Else include_once 'src/html/error.html'
     *
     *        This eventually needs to be done for all of the 'e' commands.
     */
    ?>
</div>
