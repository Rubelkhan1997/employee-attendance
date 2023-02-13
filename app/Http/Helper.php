<?php

function status($status){
    return $status == 1? 'Active': 'In-Active';
}
function file_mime_type(){
   return array(
      'image/png',
      'image/jpeg',
      'image/JPEG',
      'image/webp',
   );
}