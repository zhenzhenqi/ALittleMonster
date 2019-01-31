<feedDog>
  <h1> Woof-woof</h1>

  <img src="img/{ petImage }.jpg">


  <div>
    <div class="bar hunger">
      <div style="width:{ hunger }%;">&nbsp;</div>
    </div>
    <p>Hunger: { hunger }</p>
  </div>


  <button onclick={ feed }>Feed</button>




  <script>

  window.setInterval(function(){
    this.incHunger();
  }, 3000);

    this.hunger = 0;
    this.petImage = "neutral";

    decHunger() {
      this.hunger = this.hunger - 20 < 0 ? 0 : this.hunger - 20;
    }

    incHunger() {
      this.hunger = this.hunger + 10 > 100 ? 100 : this.hunger + 10;
    }

    checkStatus() {
      if (this.hunger == 100){
        this.petImage = "dead";
      } else if (this.hunger >= 50){
        this.petImage = "hunger";
      }
    }

// functions that respond to events
    feed(e) {
      this.decHunger();
    }
  </script>

  <style>

  img{
    weight:auto;
    height:200px;
  }

  .bar {
    width: 100%;
    border: 1px solid grey;
    text-align: left;
    background-color: dodgerblue;
  }
  </style>
</feedDog>
