<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Niconne&display=swap" rel="stylesheet">
    <style>
        p {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- ===  Page header === -->


    <section class="page">

        <!-- ===  Page header === -->

        <div class="page-header" style="background-image: url(assets/images/header-1.jpg)">
            <div class="container">
                <h2 class="title" style="font-weight:bold;">Services of Unique Garden</h2>
            </div>
        </div>

        <div class="room">

            <!-- === Room gallery === -->

            <div class="room-gallery">
                <div class="container">
                    <div class="owl-slider owl-theme owl-slider-gallery">
                        <!-- === slide item === -->
                        <div class="item" style="background-image: url(assets/images/hall.png)">
                            <img src="manyaImages/servicesImages/event.jpeg" alt="event" />
                        </div>
                        <!-- === slide item === -->
                        <div class="item" style="background-image: url(assets/images/entrygate.jpg)">
                            <img src="manyaImages/servicesImages/fountain.jpg" alt="fountain" />
                        </div>
                        <!-- === slide item === -->
                        <div class="item" style="background-image: url(assets/images/silder.jpg)">
                            <img src="manyaImages/servicesImages/wedding.jpg" alt="wedding" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <%--blog--%>

    <br />

    <section class="rooms rooms-widget">

        <!-- === rooms header === -->

        <div class="section-header">
            <div class="container">
                <h2 class="title" >Our Ideal Services</h2>
                <p>One of the Best Wedding Venues and Marriage Banquet Hall Services in Patna</p>
            </div>
        </div>

        <div class="container">
            <div class="owl-rooms owl-theme">

                <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                            <img src="assets/images/stage/stage1.jpg"  alt="stage"style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="#">WEDDING PLANNING</a></h3>
                                <p></p>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample">
                                    <div class="card card-body">
                                        Welcome to Unique Garden, where dreams of a perfect wedding come to life amidst the serene beauty of  Rukanpura, Patna. Our resort is not just a venue; it’s a picturesque haven designed to host your most cherished moments with elegance and sophistication.
At Unique Garden, we understand that your wedding day is one of the most significant events of your life. That's why our dedicated team of wedding specialists is committed to making your dream wedding a reality. From intimate ceremonies to grand celebrations, we offer a range of breathtaking indoor and outdoor venues to suit every style and size of wedding.Imagine exchanging vows surrounded by lush gardens, overlooking panoramic views, or under a canopy of stars. Our resort provides the perfect backdrop for your ceremony and reception, ensuring every moment is unforgettable.
</div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="item">
                    <article>
                        <div class="image"  style="height:200px;">
                            <img src="assets/images/catering/catering-services.jpg"  alt="catering"  style="height:230px;"/>
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="#">CATERING SERVICES</a></h3>
                                <p></p>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample2">
                                    <div class="card card-body">
                                       Spectacular Wedding Catering at Unique Garden
                                        Elevate your wedding celebrations with exquisite culinary experiences at Unique Garden, where every dish is crafted to perfection amidst the stunning backdrop of  Rukanpura, Patna. Our resort is renowned for its exceptional catering services, designed to delight and impress your guests on your special day.
                                        Customized Menus
                                        At Unique Garden, we understand that your wedding day is a reflection of your unique style and tastes. Our talented culinary team is dedicated to creating customized menus that cater to your preferences, dietary needs, and cultural traditions. Whether you envision an elegant plated dinner, a lavish buffet spread, or themed stations, we will work closely with you to curate a culinary experience that surpasses expectations.
                                        Quality Ingredients
                                        We source only the freshest and finest ingredients to ensure that every dish is not only delicious but also beautifully presented. From hors d'oeuvres to decadent desserts, our commitment to quality and attention to detail shines through in every bite.
                                        Professional Service
                                        Our experienced staff is committed to providing impeccable service, ensuring that your wedding reception flows seamlessly from start to finish. From the initial consultation to the last toast, our team will handle every aspect of your dining experience with professionalism and grace.

                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                        <img src="assets/images/stage/stage3.png" alt="stage" style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">STAGE DECORATION</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample3">
                                    <div class="card card-body">
                                      Elegant Stage & Flower Decoration Services at Unique Garden
Transform your special occasion into a stunning affair with exquisite stage and flower decorations at Unique Garden. Our resort offers professional décor services designed to enhance the beauty and ambiance of your event, ensuring every detail reflects your style and vision.
Customized Décor Solutions
At Unique Garden, we understand that décor plays a crucial role in setting the tone for your event. Whether you're planning a wedding, anniversary celebration, corporate gala, or any other special occasion, our expert decorators specialize in creating customized designs that captivate and inspire.
Stunning Stage Designs
Our talented team of decorators will craft a stage design that serves as the focal point of your event. Whether you prefer traditional elegance, contemporary chic, or thematic creativity, we will work closely with you to design a stage that complements your theme and enhances the overall aesthetic of your celebration.

                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                            <img src="assets/images/mandap/mandap.jpg"  alt="mandap"  style="height:230px;"/>
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">EVENT ORGANISER</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample4">
                                    <div class="card card-body">
                                       Your Event, Our Expertise: Event Planning at Unique Garden
                                    At Unique Garden, we understand that every event is a unique occasion deserving of meticulous planning and flawless execution. Whether you're organizing a wedding, corporate event, milestone celebration, or social gathering, our dedicated team of event planners is here to ensure your vision becomes a reality.
                                    Comprehensive Event Services
                                    From concept to completion, our experienced event planners will guide you through every step of the planning process. We offer a range of comprehensive services tailored to meet your specific needs, including:
                                    •	Venue Selection: Choose from our array of stunning indoor and outdoor venues, each offering its own charm and versatility to accommodate events of any size and style.
                                    •	Customized Planning: We understand that each event is unique. Our planners will work closely with you to create a personalized event experience, tailored to your preferences, budget, and vision.
                                    •	Catering and Culinary Excellence: Indulge your guests with our exceptional catering services, featuring a variety of menus crafted from the finest ingredients and designed to delight every palate.
                                    •	Décor and Design: Transform your chosen venue into a breathtaking setting with our expert décor and design services. From floral arrangements to lighting and themed decorations, we ensure every detail reflects your style and enhances the ambiance of your event.
                                    •	Logistics and Coordination: Our team will handle all logistics and coordination, from coordinating vendor deliveries to managing timelines and ensuring seamless transitions throughout your event.


                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

               <%-- <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                            <img src="manyaimages/servicesImages/stage.jpg" alt=""  style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">PHOTOGRAPHY</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample5" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample5">
                                    <div class="card card-body">
                                        Your wedding day is one of those occasions where you would definitely want to capture every special moment. These are the pictures you will treasure for generations to come. In fact the photographer and videographer direct the entire sequence from the start to the finish. Wedding albums are becoming more and more decorative with beautiful borders of various designs and colors.
                                        DJs, Music artists, leading singers and live bands are invited for the sangeet and other functions. Any wedding event and the entertainment is the lighting, sound and special effects. You can even make use of pyrotechnics and fireworks.
                                        We provide you with a choice of Choreographers, dancers and singers to teach dance and music to the family members and watch live performance of:</div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>--%>

             <%--   <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                            <img src="manyaimages/servicesImages/stage.jpg" alt=""  style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">PHOTOGRAPHY</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample6" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>
                                </p>
                                <div class="collapse" id="collapseExample6">
                                    <div class="card card-body">
                                        There is no wedding without music, dance, dholaks or bells. There are all sorts of enriching events spread over 2-3 days to tempt your guests. Whether you are getting married on a grand scale or in a small way, music and dance adds zing to your function. Pep up the crowd with lively music, perfect choreography and the right ambience to create the right mood.
                                        So, we are extremely pleased that our mission provides various courses of Computer Software and Hardware Technology with very useful and move on the right path of your career in IT Sector. Hope that the student will like it and help to promote our efforts which certainly beneficial for them.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>--%>

                <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                         <img src="assets/images/uniquegarden/birthday.jpg"  alt="birthday"  style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">BIRTHDAY PARTY</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample7" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>
                                </p>
                                <div class="collapse" id="collapseExample7">
                                    <div class="card card-body">
                                       Celebrate your special day in style at Unique Garden, where every birthday becomes an unforgettable event amidst the tranquility of  Rukanpura, Patna. Whether you're turning one or one hundred, our resort offers the perfect setting to create lasting memories with your loved ones.
At Unique Garden, we understand that every birthday is unique, which is why we offer a range of exceptional venues and personalized services to ensure your celebration is truly one-of-a-kind. Choose from our stunning indoor banquet halls, scenic outdoor spaces, or private dining areas to host your party in a setting that suits your style and guest count.
Our dedicated team of event specialists is here to assist you every step of the way, from planning to execution. Whether you envision an intimate gathering with close friends and family or a lavish affair with themed decorations and entertainment, we will work closely with you to bring your vision to life.

                                    </div>
                                    </div>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="item">
                    <article>
                        <div class="image" style="height:200px;">
                           <img src="assets/images/uniquegarden/uniquegarden3.jpg"    alt="uniquegarden"  style="height:230px;" />
                        </div>
                        <div class="details">
                            <div class="text">
                                <h3 class="title"><a href="room-overview.html">DESIGN & DÉCOR</a></h3>
                                <p>
                                    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample8" role="button" aria-expanded="false" aria-controls="collapseExample">Know More</a>

                                </p>
                                <div class="collapse" id="collapseExample8">
                                    <div class="card card-body">
                                        Create an amazing atmosphere tailored to how you envision your special day with extraordinary wedding decorations from Manya Premier Resort. There is everything to add fun and fabulous details from vibrant confetti, interesting table number cards and other unique decorations.
                                        Perusing through the numerous, colorful options available can help you choose the items to make the wedding of your dreams into a reality right down to the small details. Illuminate your space with some of the beautiful candles offered or with festive paper lanterns.
                                        Add character to your wedding with a personalized runner lined with rich, multicolored silk rose petals. Keep your wedding party and guests comfortable and cool from the sun with delicate parasols and beautiful handheld fans that can be taken home as wonderful mementos.

                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

