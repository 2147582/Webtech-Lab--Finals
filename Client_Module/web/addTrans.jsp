<!DOCTYPE html>
<html>
    <head>
    <title>Rental Constructions</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
    
        <div class="card text-center" style="width: 500px;">
            <div class="card-header">
              Place Quantity Order
            </div>
            <div class="card-body">
              <form action="buy.jsp" class="form">
                <div>
                    <label class="sr-only" for="q">Quantity</label>
                    <input type="number" class="form-control mb-2 mr-sm-2" id="q" name="q" placeholder="Quantity .." required/>
                </div>
                <div>
                    <label class="sr-only" for="q">Id</label>
                    <input type="number" class="form-control mb-2 mr-sm-2" id="id" name="id" placeholder="Id .." required/>
                </div>
                <div>
                    <label class="sr-only" for="q">User ID</label>
                    <input type="number" class="form-control mb-2 mr-sm-2" id="ui" name="ui" placeholder="User Id .." required/>
                </div>
                <div>
                    <button type="submit" value="Submit" class="btn btn-primary mb-2">Submit</button>
                </div>
            </form>
            </div> 
        </div>
    
    <!--
    <div class="container">
        <form action="buy.jsp" class="form">
            <div>
                <label class="sr-only" for="q">Quantity</label>
                <input type="number" class="form-control mb-2 mr-sm-2" id="q" name="q" placeholder="Quantity .." required/>
            </div>
            <div>
                <label class="sr-only" for="q">Id</label>
                <input type="number" class="form-control mb-2 mr-sm-2" id="id" name="id" placeholder="Id .." required/>
            </div>
            <div>
                <label class="sr-only" for="q">User ID</label>
                <input type="number" class="form-control mb-2 mr-sm-2" id="ui" name="ui" placeholder="User Id .." required/>
            </div>
            <div>
                <button type="submit" value="Submit" class="btn btn-primary mb-2">Submit</button>
            </div>
        </form>
    </div>
    -->
    </body>
</html>
