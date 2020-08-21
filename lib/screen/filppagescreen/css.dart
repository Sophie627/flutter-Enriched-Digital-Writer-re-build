final String css = """
  html{
      height: 100%;
  }
  body{
      overflow:hidden;
      height: 100%;
  }

  #flipbook{
      width:70% !important;
      height:40% !important;
      margin:200px auto;
  }

  #flipbook .page{
      width:400px;
      height:300px;
      background-color:white;
      line-height:300px;
      font-size:20px;
      text-align:center;
  }

  #flipbook .page-wrapper{
      -webkit-perspective:2000px;
      -moz-perspective:2000px;
      -ms-perspective:2000px;
      -o-perspective:2000px;
      perspective:2000px;
  }

  #flipbook .hard{
      background:#ccc !important;
      color:#333;
      -webkit-box-shadow:inset 0 0 5px #666;
      -moz-box-shadow:inset 0 0 5px #666;
      -o-box-shadow:inset 0 0 5px #666;
      -ms-box-shadow:inset 0 0 5px #666;
      box-shadow:inset 0 0 5px #666;
      font-weight:bold;
  }

  #flipbook .odd{
      background:-webkit-gradient(linear, right top, left top, color-stop(0.95, #FFF), color-stop(1, #DADADA));
      background-image:-webkit-linear-gradient(right, #FFF 95%, #C4C4C4 100%);
      background-image:-moz-linear-gradient(right, #FFF 95%, #C4C4C4 100%);
      background-image:-ms-linear-gradient(right, #FFF 95%, #C4C4C4 100%);
      background-image:-o-linear-gradient(right, #FFF 95%, #C4C4C4 100%);
      background-image:linear-gradient(right, #FFF 95%, #C4C4C4 100%);
      -webkit-box-shadow:inset 0 0 5px #666;
      -moz-box-shadow:inset 0 0 5px #666;
      -o-box-shadow:inset 0 0 5px #666;
      -ms-box-shadow:inset 0 0 5px #666;
      box-shadow:inset 0 0 5px #666;
      
  }

  #flipbook .even{
      background:-webkit-gradient(linear, left top, right top, color-stop(0.95, #fff), color-stop(1, #dadada));
      background-image:-webkit-linear-gradient(left, #fff 95%, #dadada 100%);
      background-image:-moz-linear-gradient(left, #fff 95%, #dadada 100%);
      background-image:-ms-linear-gradient(left, #fff 95%, #dadada 100%);
      background-image:-o-linear-gradient(left, #fff 95%, #dadada 100%);
      background-image:linear-gradient(left, #fff 95%, #dadada 100%);
      -webkit-box-shadow:inset 0 0 5px #666;
      -moz-box-shadow:inset 0 0 5px #666;
      -o-box-shadow:inset 0 0 5px #666;
      -ms-box-shadow:inset 0 0 5px #666;
      box-shadow:inset 0 0 5px #666;
  }
""";
