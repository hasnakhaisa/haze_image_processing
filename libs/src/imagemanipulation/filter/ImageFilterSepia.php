<?php

namespace imagemanipulation\filter;

use imagemanipulation\ImageResource;
use imagemanipulation\Args;

/**
 * Apply sepia to the image.
 * Each and every pixel will be programmically calculated, and thus this method is quite slow.
 * For a faster implementation see ImageFilterSepiaFast
 *
 * @see ImageFilterSepiaFast
 */
class ImageFilterSepia implements IImageFilter
{

    private $darken;

    /**
     * Creates a new ImageFilterSepia
     *
     * @param int $aDarken
     */
    public function __construct($darken = 15)
    {
        $this->darken = Args::int($darken, 'darken')->required()->min(0)->value();
    }

    /**
     * Applies the sepia filter to an image resource
     *
     * @param ImageResource $aResource
     */
    public function applyFilter(ImageResource $aResource)
    {
        $dstImg = $aResource->getResource();
        $imgX = $aResource->getX();
        $imgY = $aResource->getY();
        $previous = array("index" => -1, "result" => 0);

        for ($y = 0; $y < $imgY; $y++) {
            for ($x = 0; $x < $imgX; $x++) {
                $dstRGB = imagecolorat($dstImg, $x, $y);
                if ($previous["index"] === $dstRGB) {
                    $newRGB = $previous["result"];
                } else {
                    $dstR = $dstRGB >> 16 & 0xFF;
                    $dstG = $dstRGB >> 8 & 0xFF;
                    $dstB = $dstRGB & 0xFF;

                    $newR = ($dstR * 0.393 + $dstG * 0.769 + $dstB * 0.189) - $this->darken;
                    $newG = ($dstR * 0.349 + $dstG * 0.686 + $dstB * 0.168) - $this->darken;
                    $newB = ($dstR * 0.272 + $dstG * 0.534 + $dstB * 0.131) - $this->darken;

                    $newR = ($newR > 255) ? 255 : (($newR < 0) ? 0 : $newR);
                    $newG = ($newG > 255) ? 255 : (($newG < 0) ? 0 : $newG);
                    $newB = ($newB > 255) ? 255 : (($newB < 0) ? 0 : $newB);

                    $newRGB = imagecolorallocate($dstImg, $newR, $newG, $newB);

                    $previous["index"] = $dstRGB;
                    $previous["result"] = $newRGB;
                }

                imagesetpixel($dstImg, $x, $y, $newRGB);
            }
        }
    }
}
