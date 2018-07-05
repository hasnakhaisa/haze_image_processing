<!DOCTYPE HTML>
<html>
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <style>
        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery canvas {
            width: 100%;
            height: auto;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }
    </style>
</head>

<body>
Haze Level : <
<select style="width: 200px;" id="myselect" name="location"
        onchange="window.location='combine.php?id='+this.value+'&pos='+this.selectedIndex">
    <option value="10">10</option>
    <option value="20">20</option>
    <option value="30">30</option>
    <option value="40">40</option>
    <option value="50">50</option>
    <option value="60">60</option>
</select>

<script>
    var myselect = document.getElementById("myselect");
    myselect.options.selectedIndex = <?php echo $_GET["pos"]; ?>;
    //  console.log(myselect.options.selectedIndex);
</script>
<br>

<?php
// Start the session

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sort_image";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$dirname = "haze-level/images/";
$images = glob($dirname . "*.png");
$file = file_get_contents('./haze-level/labels.txt', true);
//echo ($file);

$name = explode(" ", $file);

for ($a = 1; $a < sizeof($name); $a++) {
    $quan[$a - 1] = substr($name[$a], 0, 2);
    $name[$a] = substr($name[$a], 3);
}
$b = 0;
echo '<script> var haze; </script>';
if (isset($_GET['id'])) {
    foreach ($images as $image) {
        if ($quan[$b] <= $_GET['id'] && $quan[$b] >= ($_GET['id'] - 10)) {
            echo '<div class="gallery">
            <canvas id="canvas-' . $name[$b] . '" width="100" height="100"></canvas>
            <div class="desc">nama : ' . $name[$b] . ' level : ' . $quan[$b] . '<p id="haze-' . $name[$b] . '" ><p></div>
            </div>';
            echo '<script>
            var pix3 = [];
			var imageObj = new Image();
			imageObj.onload = function () {
                var canvas = document.getElementById("canvas-' . $name[$b] . '");
                var name = "' . $name[$b] . '";
                //console.log(name);
                var context = canvas.getContext(\'2d\');
                var x = 0;
                var y = 0;
                context.drawImage(imageObj, x, y);
                var imageData = context.getImageData(x, y, imageObj.width, imageObj.height);
                var data = imageData.data;
                for (var i = 0; i < data.length; i += 4) {
                    var brightness = 0.34 * data[i] + 0.5 * data[i + 1] + 0.16 * data[i + 2];
                    // red
                    data[i] = brightness;
                    // green
                    data[i + 1] = brightness;
                    // blue
                    data[i + 2] = brightness;
                        for (c = 1; c < 256; c++) {
                            if (pix3[c] == null)
                                pix3[c] = 0;
                            if (data[i] == c)
                                pix3[c]++;
                        }
                    }
                haze =0;
                do{
                    haze++;
                }while(pix3[haze]==0);
                var level = document.getElementById("haze-' . $name[$b] . '");
                level.innerHTML = haze;
                
                $.ajax({
                    type: \'POST\',
                    url: \'update.php\',
                    data: {haze:haze, name:name},
                    success: function(data) {
                    console.log(data);
                    },
                    error: function(ts){
                    console.log(ts)
                    }
                });
            };
            
            var dir =  \'haze-level/' . substr($name[$b], 2) . '\';
            console.log(dir);
			imageObj.src = dir;
            </script>';


        }

        $b++;

        if ($b == 100)
            exit(0);
    }
}


$conn->close();

?>


</body>
</html>