<?php
//     echo "<pre>".print_r($key_array)."</pre>";
    $string_key=implode($key_array);
     $plaintext=$ptext;
    $plaintext_hex="";

 echo"<hr />
 <h2>Plaintext in English : ".$plaintext."</h2>
 <h3>Translation into Hexadecimal Value</h3>       ";

        echo"<table border=1 class='table table-striped'><tr>";
          for($x=0;$x<strlen($plaintext);$x++)
          {
              echo "<td width=20>".$plaintext[$x]."</td>";
          }
         echo "</tr><tr>";
          for($x=0;$x<strlen($plaintext);$x++)
          {
              $ascii_hex=dechex(ord($plaintext[$x]));
              echo "<td width=20>".$ascii_hex."</td>";
              $plaintext_hex.=$ascii_hex;
          }
         echo "</tr></table>
         <h4> Plaintext XOR Key</h4>
         ";
     $key_hex=substr($string_key,0,strlen($plaintext_hex));
     echo "<b>".$plaintext_hex."</b> XOR <b>";
     echo $key_hex."</b><br>";
     $xored=bin2hex(pack('H*',$plaintext_hex)^pack('H*',$key_hex));
     echo "ANS: <b>". $xored."</b><br>";
//     <td >Block 2 : </td>
  //           <td >".substr($xored,16,16)."</td>

  $rr=0;
 for($round=1;$round<=8;$round++)
 {
            $p1_b1=substr($xored,0,4);
            $p2_b1=substr($xored,4,4);
            $p3_b1=substr($xored,8,4);
            $p4_b1=substr($xored,12,4);
            $p1_b2=substr($xored,16,4);
            $p2_b2=substr($xored,20,4);
            $p3_b2=substr($xored,24,4);
            $p4_b2=substr($xored,28,4);
  //block 1

echo "<h4>Round ".$round."</h4>
<table  cellspacing=10 cellpadding=10 border=0 class='table table-striped'>
<tr><td>
<table border=1 class='table table-striped'>
        <tr>
             <td colspan=2 >Block 1 : </td>
             <td colspan=2>".substr($xored,0,16)."</td>

        </tr>
        ";

             echo"<tr>
             <td colspan=2> P1 :".$p1_b1."</td>
             <td colspan=2> P3 :".$p3_b1."</td>

        </tr>";
           echo"<tr>
             <td colspan=2> P2 :".$p2_b1."</td>
             <td colspan=2> P4 :".$p4_b1."</td>

        </tr>";

         $x1=mul_mod($p1_b1,$key_array[$rr]);$rr++;
         $x2=add_mod($p2_b1,$key_array[$rr]);$rr++;
         $x3=add_mod($p3_b1,$key_array[$rr]);$rr++;
         $x4=mul_mod($p4_b1,$key_array[$rr]);$rr++;
         $x5= bin2hex(pack('H*',$x1)^pack('H*',$x3));
         $x6= bin2hex(pack('H*',$x2)^pack('H*',$x4));
         $x7=mul_mod($x5,$key_array[$rr]);$rr++;
         $x8=add_mod($x6,$x7);
         $x9=mul_mod($x8,$key_array[$rr]);
         $x10=add_mod($x7,$x9);
         $x11= bin2hex(pack('H*',$x2)^pack('H*',$x9));
         $x12= bin2hex(pack('H*',$x3)^pack('H*',$x9));
         $x13= bin2hex(pack('H*',$x2)^pack('H*',$x10));
         $x14= bin2hex(pack('H*',$x4)^pack('H*',$x10));
         $block_key1=$x11.$x12.$x13.$x14;

        echo "<tr>
           <td>Step 1</td>
           <td>".$x1."</td>
            <td>Step 8</td>
           <td>".$x8."</td>
      </tr>";
        echo "<tr>
           <td>Step 2</td>
           <td>".$x2."</td>
            <td>Step 9</td>
           <td>".$x9."</td>
      </tr>";
     echo "<tr>
           <td>Step 3</td>
           <td>".$x3."</td>
            <td>Step 10</td>
           <td>".$x10."</td>
      </tr>";
           echo "<tr>
           <td>Step 4</td>
           <td>".$x4."</td>
            <td>Step 11</td>
           <td>".$x11."</td>
      </tr>";
            echo "<tr>
           <td>Step 5</td>
           <td>".$x5."</td>
            <td>Step 12</td>
           <td>".$x12."</td>
      </tr>";
             echo "<tr>
           <td>Step 6</td>
           <td>".$x6."</td>
            <td>Step 13</td>
           <td>".$x13."</td>
      </tr>";
             echo "<tr>
           <td>Step 7</td>
           <td>".$x7."</td>
            <td>Step 14</td>
           <td>".$x14."</td>
      </tr>
      <tr>
           <th colspan=2>Block Key</th>
           <th colspan=2>".$block_key1."</th>
      </tr>

      ";
echo"</table>";
        $rr=$rr-5;
///block 2


echo "</td><td><table border=1 class='table table-striped'>
        <tr>
             <td colspan=2 >Block 2 : </td>
             <td colspan=2>".substr($xored,16,16)."</td>

        </tr>";


             echo"<tr>
             <td colspan=2> P1 :".$p1_b2."</td>
             <td colspan=2> P3 :".$p3_b2."</td>

        </tr>";
           echo"<tr>
             <td colspan=2> P2 :".$p2_b2."</td>
             <td colspan=2> P4 :".$p4_b2."</td>
                </tr>";


         $x1=mul_mod($p1_b2,$key_array[$rr]);  $rr++;
         $x2=add_mod($p2_b2,$key_array[$rr]);$rr++;
         $x3=add_mod($p3_b2,$key_array[$rr]);$rr++;
         $x4=mul_mod($p4_b2,$key_array[$rr]);$rr++;
         $x5= bin2hex(pack('H*',$x1)^pack('H*',$x3));
         $x6= bin2hex(pack('H*',$x2)^pack('H*',$x4));
         $x7=mul_mod($x5,$key_array[$rr]);$rr++ ;
         $x8=add_mod($x6,$x7);
         $x9=mul_mod($x8,$key_array[$rr]);$rr++;
         $x10=add_mod($x7,$x9);
         $x11= bin2hex(pack('H*',$x2)^pack('H*',$x9));
         $x12= bin2hex(pack('H*',$x3)^pack('H*',$x9));
         $x13= bin2hex(pack('H*',$x2)^pack('H*',$x10));
         $x14= bin2hex(pack('H*',$x4)^pack('H*',$x10));
          $block_key2=$x11.$x12.$x13.$x14;

        echo "<tr>
           <td>Step 1</td>
           <td>".$x1."</td>
            <td>Step 8</td>
           <td>".$x8."</td>
      </tr>";
        echo "<tr>
           <td>Step 2</td>
           <td>".$x2."</td>
            <td>Step 9</td>
           <td>".$x9."</td>
      </tr>";
     echo "<tr>
           <td>Step 3</td>
           <td>".$x3."</td>
            <td>Step 10</td>
           <td>".$x10."</td>
      </tr>";
           echo "<tr>
           <td>Step 4</td>
           <td>".$x4."</td>
            <td>Step 11</td>
           <td>".$x11."</td>
      </tr>";
            echo "<tr>
           <td>Step 5</td>
           <td>".$x5."</td>
            <td>Step 12</td>
           <td>".$x12."</td>
      </tr>";
             echo "<tr>
           <td>Step 6</td>
           <td>".$x6."</td>
            <td>Step 13</td>
           <td>".$x13."</td>
      </tr>";
             echo "<tr>
           <td>Step 7</td>
           <td>".$x7."</td>
            <td>Step 14</td>
           <td>".$x14."</td>
      </tr>
        <tr>
           <th colspan=2>Block Key</th>
           <th colspan=2>".$block_key2."</th>
      </tr>

      ";
echo"</table></td></tr>";
//block1 result

$combine_blocks=$block_key1.$block_key2;
 $rotated=substr(hex_bin($combine_blocks), 5) . substr(hex_bin($combine_blocks), 0, 5);
   $fkey= hex_split($rotated);
echo "
<tr>
     <th colspan=2>Combine Block 1 and 2 :".$combine_blocks."</th>
</tr>
<tr>
     <th colspan=2>Encrypted Plaintext  after<br> Round ".$round." (Cicrcular L Shifitng(25 bits)): <br>
     <font color=red>".$fkey."</font></th>
</tr>

</table><br><br>";
$xored=$fkey;
}
?>