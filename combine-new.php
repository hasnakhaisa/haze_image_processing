<!DOCTYPE HTML>
<html>
<head>
    <script type="text/javascript" src="libs/jquery.min.js"></script>
    <script src="libs/canny.min.js"></script>
    <script src="libs/filters.js"></script>
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


Haze Level : <
<select style="width: 200px;" id="myselect" name="location"
        onchange="window.location='combine-test.php?id='+this.value+'&pos='+this.selectedIndex">
    <option value="10">10</option>
    <option value="20">20</option>
    <option value="30">30</option>
    <option value="40">40</option>
    <option value="50">50</option>
    <option value="60">60</option>
</select>

<canvas id="myCanvas" width="640" height="480"></canvas>


<script>
    var myselect = document.getElementById("myselect");
    myselect.options.selectedIndex = <?php echo $_GET["pos"]; ?>;
    //  console.log(myselect.options.selectedIndex);
</script>
<br>

<?php

$dirname = "haze-level/images/";
$images = glob($dirname . "*.png");
$file = file_get_contents('./haze-level/labels.txt', true);

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
            <a target="_blank" href="haze-level/' . $name[$b] . '">
                <img src="haze-level/' . $name[$b] . '" alt="nama : ' . $name[$b] . ' level : ' . $quan[$b] . '" width="100" height="100">
            </a>
            <div class="desc">nama : ' . $name[$b] . ' level : ' . $quan[$b] . '
            <p id="haze-' . $name[$b] . '" ><p>
            <p id="stddev-' . $name[$b] . '" ><p>
            <p id="mean-' . $name[$b] . '" ><p>
            </div>
            </div>';
        echo '<script>
            var pix = [];
            var pix1 = [];
            var pix2 = [];
            var pix3 = [];
            var quan = ' . $quan[$b] . ';
			var imageObj = new Image();
			var dir = \'haze-level/' . substr($name[$b], 2) . '\';
            var haze = 0;
            var mean;
            var sum =0;
            var tempsum =0;
            var std_tempsum=0;
            //console.log(dir);
			
			imageObj.src = dir;
        
            var canvas = document.getElementById("myCanvas");
            
            var name = "' . $name[$b] . '";
            //console.log(name);
            var context = canvas.getContext(\'2d\');
            var x = 0;
            var y = 0;
            
//              context.drawImage(imageObj, x, y);

            var im_h = imageObj.height;
            var cc_h = canvas.height;

            context.drawImage(imageObj,
            x, y, imageObj.width, im_h / 2,
            x, y, canvas.width, cc_h / 2);
            
            var imageData = context.getImageData(x, y, imageObj.width, imageObj.height);
/*                
            x, im_h / 3, imageObj.width, im_h / 3,
            x, cc_h / 3, canvas.width, cc_h / 3);
        
            x, im_h / 3 + im_h / 3, imageObj.width, im_h / 3,
            x, cc_h / 3 + cc_h / 3, canvas.width, cc_h / 3);

            x, y, imageObj.width, im_h / 2,
            x, y, canvas.width, cc_h / 2);
            
            x, im_h / 2, imageObj.width, im_h / 2,
            x, cc_h / 2, canvas.width, cc_h / 2);

*/   
            var data = imageData.data;
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
                    if (c > 180)
                        haze += (pix[c] + pix1[c] + pix2[c]);
                }
                
                var brightness = 0.34 * data[i] + 0.5 * data[i + 1] + 0.16 * data[i + 2];
                // red
                data[i] = brightness;
                // green
                data[i + 1] = brightness;
                // blue
                data[i + 2] = brightness;
                
                for (c = 1; c < 256; c++) {
                //count grayscale
                    if (pix3[c] == null)
                        pix3[c] = 0;
                    if (data[i] == c)
                        pix3[c]++;
                }	                   
            }
            
            for (i=0; i< data.length; i+=4){
                tempsum += data[i];
                sum++;
            }
            
            mean = tempsum / sum;
            console.log("mean ="+mean);
            
            for (i = 0; i < data.length; i += 4) {
                std_tempsum += (mean - data[i]) * (mean - data[i]);
            }
            var stddev = Math.sqrt(std_tempsum / sum);
            console.log("stddev ="+stddev);

            var level = document.getElementById("haze-' . $name[$b] . '");
            var mean_txt = document.getElementById("mean-' . $name[$b] . '");
            var stddev_txt = document.getElementById("stddev-' . $name[$b] . '");
            
            level.innerHTML = haze;
            mean_txt.innerHTML = mean;
            stddev_txt.innerHTML = stddev;
            
            $.ajax({
                type: \'POST\',
                url: \'update.php\',
                data: {white:haze, name:name, quan:quan, mean:mean, stddev:stddev},
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