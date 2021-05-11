<?php
function hex_split($bin)
{
  $r=str_split($bin, 4);
  $hex="";

    for($x=0;$x<sizeof($r);$x++)
    {
         $hex.=base_convert($r[$x],2,16);
    }

  return $hex;

}
function hex_bin($hex)
{
    $bin="";
      for($x=0;$x<strlen($hex);$x++)
      {
          $b=str_pad(base_convert($hex[$x],16,2),4,'0',STR_PAD_LEFT);
          $bin.=$b;
      }
      return $bin;

}

  function dec2hex($dec)
{

        $hex = '';
    do {
        $last = bcmod($dec, 16);
        $hex = dechex($last).$hex;
        $dec = bcdiv(bcsub($dec, $last), 16);
    } while($dec>0);
    return $hex;
}

  function bchexdec($hex)
{
    if(strlen($hex)==1)
    {
        return hexdec($hex);
    }
    else
    {
        $remain=substr($hex,0,-1);
        $last=substr($hex,-1);
        return bcadd(bcmul(16,bchexdec($remain)),hexdec($last));
    }
}

function mul_mod($k1,$p1)
{
     $constant_mul=pow(2,16)+1;
        $x1=hexdec($k1) * hexdec($p1);
         $divider=floor($x1/$constant_mul);
         $result=$constant_mul*$divider;
          if($divider>0)
          {
           $x1=dechex(($x1-$result) % $constant_mul);
          }
          else
          {
              $x1=dechex($x1 % $constant_mul);
          }
          return $x1;
}
function add_mod($k1,$p1)
{
     $constant_add=pow(2,16);


    $x2=hexdec($k1) + hexdec($p1);
    $divider=floor($x2/$constant_add);
       $result=$constant_add*$divider;
      if($divider>0)
      {
       $x2=dechex(($x2-$result) % $constant_add);
      }
      else
      {
          $x2=dechex($x2 % $constant_add);
      }
      return $x2;

}

?>