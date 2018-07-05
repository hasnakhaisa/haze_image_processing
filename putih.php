<!DOCTYPE HTML>
<html>
<head>
    <script type="text/javascript" src="libs/jquery.min.js"></script>
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

        div.gallery img {
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

<canvas id="myCanvas" width="640" height="480"></canvas>


<br>

<?php
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
echo '<script> var haze; 

</script>';
if (isset($_GET['id'])) {
    foreach ($images as $image) {
//        if ($quan[$b] <= $_GET['id'] && $quan[$b] >= ($_GET['id'] - 10)) {
        echo '<div class="gallery"
        <a target="_blank" href="\  haze-level/' . $name[$b] . '">
            <img src="haze-level/' . $name[$b] . '" alt="nama : ' . $name[$b] . ' level : ' . $quan[$b] . '" width="100" height="100">
            </a>
            <div class="desc">nama : ' . $name[$b] . ' level : ' . $quan[$b] . '<p id="haze-' . $name[$b] . '" ><p></div>
            </div>';
        echo '<script>
        var pix = [];
        var pix1 = [];
        var pix2 = [];
        var mean;
        var sum =0;
        var tempsum =0;
        var std_tempsum=0;
        var quan = ' . $quan[$b] . ';
        var imageObj = new Image();
        var dir = \'haze-level/' . substr($name[$b], 2) . '\';

        //console.log(dir);

        imageObj.src = dir;

        var canvas = document.getElementById("myCanvas");
        var name = "' . $name[$b] . '";
        //console.log(name);
        var context = canvas.getContext(\'2d\');
        var x = 1;
        var y = 1;
        context.drawImage(imageObj, x, y);
        var imageData = context.getImageData(x, y, imageObj.width, imageObj.height);
        var data = imageData.data;
        var hitung_putih=0;
        for (var i = 0; i < data.length; i += 4) {
            for (c = 1; c < 256; c++) {
                //count red value
                if (pix[c] == null)
                    pix[c] = 0;
                if (data[i] == c)
                    pix[c]++;
                //count green value		
                if (pix1[c] == null)
                    pix1[c] = 0;
                if (data[i + 1] == c)
                    pix1[c]++;
                //count blue value		
                if (pix2[c] == null)
                    pix2[c] = 0;
                if (data[i + 2] == c)
                    pix2[c]++;
                if(c>200)
                    hitung_putih += (pix[c]+pix1[c]+pix2[c]);
            }
        }
    
        context.putImageData(imageData, x, y);
        
        var level = document.getElementById("haze-' . $name[$b] . '");
                level.innerHTML = hitung_putih;

        $.ajax({
            type: \'POST\',
        url: \'update.php\',
        data: {name:name, quan:quan, white:hitung_putih},
        success: function(data) {
            console.log(data);
        },
        error: function(ts){
            console.log(ts)
        }
    });
    </script>';


        //}

        $b++;

        if ($b == 100)
            exit(0);
    }
}
?>


</body>


</html>