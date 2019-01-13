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
    this.hunger = 0;
    this.happiness = 50;
    this.petImage = "neutral";


    incHunger() {
      if (this.hunger >= 80)
        this.petImage = "hunger";
        this.happiness = 0;
      this.hunger += 20;
      return true;
    }

    decHunger() {
      if (this.hunger <= 60)
        this.petImage = "neutral";
      this.hunger -= 20;
      return true;
    }

    incHappiness() {
      this.happiness = this.happiness + 20 > 100 ? 100 : this.happiness + 20;
      return true;
    }
    decHappiness() {
      this.happiness = this.happiness - 20 < 0 ? 0 : this.happiness - 20;
      return true;
    }


    feed(e) {
      this.decHunger();
    }
    play(e) {
      this.incHunger() && this.incHappiness();
    }
    ignore(e) {
      this.incHunger();
      this.decHappiness();
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
