function Home() {
    return ( 
        <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://tse4.mm.bing.net/th/id/OIP.CYLs-ETDuL1PW1t5GkqUAgHaEo?rs=1&pid=ImgDetMain" 
      class="d-block w-100" alt="bg1" height={350} />
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://www.pixelstalk.net/wp-content/uploads/2016/08/Nature-beautiful-desktop-images-cool.jpg" 
      class="d-block w-100" alt="bg2" height={350}/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://th.bing.com/th/id/R.92b9c9edc227f9d262ecc5c31c23db8e?rik=LwiU3pX8Ri6mLg&riu=http%3a%2f%2fwallpaperheart.com%2fwp-content%2fuploads%2f2018%2f04%2fgood-wallpapers7.jpg&ehk=PcxVBXrwfkwP7QV%2bDIDHLrnDav4uXJY8vMTIeQaJfKI%3d&risl=&pid=ImgRaw&r=0"
       class="d-block w-100" alt="bg3" height={350} />
      <div class="carousel-caption d-none d-md-block" >
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
     );
}

export default Home;