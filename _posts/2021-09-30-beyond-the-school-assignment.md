---
title: Beyond the school assignment
header: Beyond the school assignment
description: After my previous school project ended, I decided to work more on it by myself. I learned a bit of PHP and server stuff so here it goes!
tags: school project webdev coding raspberrypi
permalink: /blog/beyond-the-school-assignment/
layout: post
date: 2021-09-30 19:55:40 -0500
host: fosstodon.org
username: joeligj12
com_id: 107023949657791701
---

After delivering my school project, the teacher taught us the basics of HTML and PHP. As you might assume, I was already quite familiar with HTML and even a little JavaScript which I've used for some parts of my website.

During class, we learned how to detect `POST` requests and make a simple input box to set the degrees of a servomotor via the internet!

As far as I know PHP only works on the server side, and it can do quite a lot of stuff, like run other scripts and print its output.

So, I started to modify a script I had to print tables from a database, and I added HTML tags to every print function to make it a table.

After a few failed attempts, missing tags and some coding errors, I managed to make that work. And a nice table was displayed. I also added my website's stylesheet!

![Parking lot database table](/assets/img/blogs/2021-09-30-database-table.jpg)

Next, I wanted to be able to run specific sections of that python script based on which button was pressed, so I can allow cars to enter or exit the parking lot successfully.

For that, the easiest route for me would be using external arguments, that come when you run a command. For example, when you run `cd /path/to/directory/` , the argument is the path you wanna go to. In my case, the arguments would be the action I wanna do, and in one of those actions I would also require the input of the user, to know which parking spot they are exiting from.

After messing around with Python, I was now able to recognize user input and update the page according to it thanks to arguments sent by PHP. That section looked like this!

![Parking lot database table](/assets/img/blogs/2021-09-30-database-input.jpg)

The cool thing about this is that not only was I displaying all this information on the website, I also did stuff in the real world, my servo opened and closed, and I setup a speaker to output when there were no spots available, or in case you are entering, which spot you were assigned to use.

The PHP itself looked something like this. I placed it in different sections of the HTML, so the output appears where I want it to.

```
//If the car wants to enter
if($_POST['entrance'] and $_SERVER['REQUEST_METHOD'] == "POST"){

    $command = escapeshellcmd("sudo ./parking.py 2");
    $output = shell_exec($command);
    echo "$output";
}

// If the car wants to exit
if($_POST['space_num'] and $_SERVER['REQUEST_METHOD'] == "POST"){
    $v = $_POST['space_num'];
    $command2 = escapeshellcmd("sudo ./parking.py 1 $v");
    $output2 = shell_exec($command2);
    echo "$output2";
}

# Runs every time the page loads
$command = escapeshellcmd("sudo ./database_output.py");
$output = shell_exec($command);

echo "$output <br>";
```

As you can tell, it is quite simple to get whats going on. Now you might be wondering whats inside of those python scripts, well, I made one to output the database contents in a table, as I mentioned, and another one is in charge of updating the database, playing output to a speaker and moving the servo to let cars in and out. Check it out if you want [in its git repo](https://tildegit.org/chrono/parking_lot_website.git)

Let me know what do you think of my coding skills out of this! I think I took into account most of the plausible scenarios, but there might be some bugs still there.

I could explain these scripts but I was already unwilling to show them at all because of the mistakes I could have. Anyways, the point is I got a really cool project working that will probably be what we'll learn during the following classes, but I am glad I got inspired to do this on my own! so I am happy about it.

This has been day 57 of [#100DaysToOffload](https://100DaysToOffload.com)

