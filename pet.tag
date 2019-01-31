<pet>
  <h1> Woof-woof</h1>


  <img src="img/{ petImage }.jpg">


  <div>
    <div class="bar hunger">
      <div style="width:{ hunger }%;">&nbsp;</div>
    </div>
    <p>Hunger: { hunger }</p>
  </div>


  <div>
    <div class="bar happiness">
      <div style="width:{ happiness }%;">&nbsp;</div>
    </div>
    <p>Happiness: { happiness }</p>
  </div>

  <button onclick={ feed }>Feed</button>
  <button onclick={ play }>Play</button>
  <button onclick={ ignore }>Ignore</button>




  <script>
    this.hunger = 10;
    this.happiness = 50;
    this.petImage = "neutral";


// functions that change status
    incHunger() {
      this.hunger = this.hunger + 20 > 100 ? 100 : this.hunger + 20;
    }

    decHunger() {
      this.hunger = this.hunger - 20 < 0 ? 0 : this.hunger - 20;
    }

    incHappiness() {
      this.happiness = this.happiness + 20 > 100 ? 100 : this.happiness + 20;
    }

    decHappiness() {
      this.happiness = this.happiness - 20 < 0 ? 0 : this.happiness - 20;
    }

// check status
    checkStatus() {
      if (this.hunger == 0){
        this.petImage = "dead";
      } else if (0 < this.hunger <= 50) {
        if (this.happiness == 0){
          this.petImage = "dead";
        } else if (0 < this.hunger <= 50) {
          this.petImage = "neutral";
        } else {
          this.petImage = "happy";
        }
      } else {
        if (this.happiness == 0){
          this.petImage = "dead";
        } else if (0 < this.hunger <= 50) {
          this.petImage = "hunger";
        } else {
          this.petImage = "unhappy";
        }
      }
    }

// functions that respond to events
    feed(e) {
      this.decHunger();
      this.checkStatus();
    }

    play(e) {
      this.incHunger();
      this.incHappiness();
      this.checkStatus();
    }
    ignore(e) {
      this.incHunger();
      this.decHappiness();
      this.checkStatus();
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
</pet>
