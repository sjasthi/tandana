<?php
if(null !== copyright){
    $copyright = copyright;
}
else{
    $copyright = 'SILC';
}

?>
<style type="text/css">
  .footer {
    position: fixed;
bottom: 0;
left: 0;
width: 100%;
  }
	.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
  display: block;
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 40px;
  background: #cccccc;
  position: relative;
}
</style>
<footer class="footer">
  <div class="container">
    <p class="text-muted" style="text-align: left">©<?php echo $copyright ?></p>
  </div>
</footer>