<<<<<<< HEAD:db.sql

=======
USE_cosmetic:
CREATE TABLE brand (
    brandid    VARCHAR(10) NOT NULL,
    brandname  VARCHAR(50)
);

ALTER TABLE brand ADD CONSTRAINT brand_pk PRIMARY KEY ( brandid );

CREATE TABLE color (
    colorid    VARCHAR(10) NOT NULL,
    colorname  VARCHAR(50)
);

ALTER TABLE color ADD CONSTRAINT color_pk PRIMARY KEY ( colorid );

CREATE TABLE product (
    productid      VARCHAR(10) NOT NULL,
    productname    VARCHAR(100),
    price          DECIMAL(7, 2),
    launch_date    DATE,
    description    VARCHAR(4000),
    brand_brandid  VARCHAR(10) NOT NULL
);

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( productid );

CREATE TABLE product_color (
    colorid    VARCHAR(10) NOT NULL,
    productid  VARCHAR(10) NOT NULL
);

ALTER TABLE product_color ADD CONSTRAINT relation_1_pk PRIMARY KEY ( colorid,
                                                                     productid );

ALTER TABLE product
    ADD CONSTRAINT product_brand_fk FOREIGN KEY ( brand_brandid )
        REFERENCES brand ( brandid );

ALTER TABLE product_color
    ADD CONSTRAINT relation_1_color_fk FOREIGN KEY ( colorid )
        REFERENCES color ( colorid );

ALTER TABLE product_color
    ADD CONSTRAINT relation_1_product_fk FOREIGN KEY ( productid )
        REFERENCES product ( productid );

>>>>>>> 9e0f369c729f65643a3ac04b033aa10f24ec0746:cosmetic.sql
insert into brand values('B01','CHANEL');
insert into brand values('B02','DIOR');
insert into brand values('B03','NARS');


insert into product values('DL01','Rouge Dior',
                            1750.00,'1997-02-20','Rouge Dior is the Dior lipstick with couture colors. True floral lip care, it is enriched with red peony and pomegranate flower extracts of natural origin. Rouge Dior dresses the lips in 75 bold colors with satin, matte, metallic or velvet finishes. Long-wear lipstick that ensures 16 hours of comfort* on the lips.'
                            ,'B02');
insert into product values('DL02','Rouge Dior The Refill',
                            1800.00,'1997-02-23','The new Rouge Dior refill brings an eco-designed format to the iconic lipstick. Once the stick is finished, any of the 75 couture colors may be chosen to endlessly switch it up with a new shade.'
                            ,'B02');
insert into product values('DL03','Rouge Dior Forever Liquid',
                            1700.00,'1999-03-10','Rouge Dior Forever Liquid is the 1st ultra-pigmented, transfer-proof liquid Dior lipstick, with vibrant, ultra-matte colors that withstand contact. With striking color, the liquid lipstick wont settle into lip lines, fade, budge, or feather, even on fabric and masks.'
                            ,'B02');



insert into product values('DB01','Dior Forever Natural Bronze',
                            1700.00,'2020-05-12','Dior Forever Natural Bronze powder bronzer recreates in a single step the sun caress on the skin for a complexion that is radiant with vitality.'
                            ,'B02');
insert into product values('DB02','Rouge Blush',
                            1750.00,'2001-03-10','Rouge Blush is the only* blush that gives cheeks intense, ultra-pigmented colour while ensuring long-wear makeup. The iconic shades of the Rouge Blush powder are inspired by the emblematic Rouge Dior lipstick. Colour intensity is buildable to suit your desires for a soft or bold finish. Rouge Blush is available in several finishes: matte, iridescent or satiny.'
                            ,'B02');
insert into product values('DB03','Dior Backstage Rosy Glow',
                            1800.00,'2019-11-28','Rosy Glow universal blush is the Dior makeup artists secret weapon to create the appearance of naturally rosy cheeks, for a fresh effect, as if brightened from the inside.'
                            ,'B02');
                          


insert into product values('DE01','5 COULEURS COUTURE',
                            1700.00,'2000-04-10','The iconic 5 Couleurs eyeshadow palette has been reinvented to become 5 Couleurs Couture.Each eyeshadow palette  Denim, Black Bow, Rouge Trafalgar and Mitzah  corresponds to an iconic piece of the Dior wardrobe, offering a nuanced array of intense shades that are easy to use and combine.'
                            ,'B02');
insert into product values('DE02','5 COULEURS COUTURE - SUMMER DUNE',
                            1800.00,'2016-06-16','From intense bronze tones to sparkling gold, the eyeshadow shades explore a new approach to color that plays with the warm and golden shimmer of the sun, for natural and luminous eye makeup.'
                            ,'B02');
insert into product values('DE03','5 COULEURS DESIGNER',
                            1800.00,'2021-04-26','Born of Backstage expertise, inspired by professional techniques and textures, 5 COULEURS DESIGNER features an easy, 5-step makeup lesson (base, 2 shadows, highlighter and liner) to bring out the eyes with flawless sculpting and colour gradation.'
                            ,'B02');


insert into product values('CL01','Rouge coco bloom',
                            1450.00,'2016-06-10','And a new luster was born: intense, plump, and long-lasting, ROUGE COCO BLOOM is the lipstick that exudes a luster of beauty.CHANEL Research has created the first lip color to replenish moisture and plumpness. And long-lasting with a striking luster In a patented product formula.'
                            ,'B01');
insert into product values('CL02','Rouge coco',
                            1450.00,'2020-02-29','ROUGE COCO, the signature lipstick of CHANEL. Revamped to provide smoothness, comfort, radiance and all-day hydration. Inspired by Mademoiselle Chanel s close friends group, who briefly call her Coco, ROUGE COCOs 24 new shades include Arthur, Adrienne, Roussy, Dimitri, and more.'
                            ,'B01');
insert into product values('CL03','Rouge allure ink',
                            1450.00,'2019-02-14','ROUGE ALLURE INK matte liquid lipstick For colors that stand out and shine With light and dark texture Immediately absorbed into the lips for a light touch. For long-lasting color results (over 8 hours *), an alluring challenge that doesnt look out of sight.'
                            ,'B01');



insert into product values('CB01','Palette essentielle',
                            2550.00,'2020-06-23','A palette for the face with 3 values ??in one. Both the value of concealing, highlighting and coloring for a bright and glowing complexion. A face palette with a variety of features. Along with a design inspired by the "Coco Crush" jewelry collection that includes blush, concealer and highlighter. For a bright and glowing result that lasts all day'
                            ,'B01');
insert into product values('CB02','Palette essentielle',
                            2550.00,'2020-06-23','PALETTE ESSENTIELLE HIGHLIGHT CREAM FOR SUMMER. Two in one value of a cream highlighter for the face and to add color with just the tip of the brush. The perfect match of three colors for easy makeup application at any time of the day. Both highlighter creams that fill light-prone areas of the face. With a bright red to highlight the cheekbones or as a lip tint. So your skin looks vibrant again and your face looks radiant. Sparkling, brimming with beauty'
                            ,'B01');
insert into product values('CB03','Joues contraste',
                            2000.00,'2019-05-15','This blush that will become an indispensable item will brighten up your complexion. Helps to contour the face with a healthy glow effect. This color-and-luminous blush accentuates the cheekbones and makes the face look brighter. Its fine powdery texture makes it easy to apply on the skin. The cartridge is designed to be easily carried anywhere, so you can easily add color on your face anytime.'
                            ,'B01');



insert into product values('CE01','Les 4 ombres',
                            2550.00,'2019-11-18','A new two-tone palette inspired by flowers. The river and the coming of spring reflect the beauty and simplicity of nature. This four-tone, two-tone eyeshadow palette is decorated with camellia motifs with a wide range of satin and sparkling effects. This formula offers a soft texture designed for ease of use. A beautiful, consistent color.'
                            ,'B01');
insert into product values('CE02','Les 4 ombres',
                            2450.00,'2016-06-21','Four shades of eyeshadow That provides a modern perspective for creative beauty. The latest recipe adaptation, the team baked gentle and easy to color with more intense colors. The perfect combination of colors Provides a radiant and smooth glow all day long. Makeup shades deliver results such as Matt satin surfaces reflect light and sparkle with metallic'
                            ,'B01');
insert into product values('CE03','Ombre premiere top coat',
                            1400.00,'2020-12-16','Lucia Pica changes the rules of beauty with LA COLLECTION NOIR ET BLANC DE CHANEL, CHANEL s latest global creative make-up and designer. Introducing endless shades of black and white, Lucia Pica has partnered with Makeup Creation Studio to create a limited edition eyeshadow.'
                            ,'B01');
                            
                            

insert into product values('NL01','Nars Lipstick',
                            850.00,'2019-06-21','A new lineup of lipstick in matte, satin, and sheer finishes. innovative new formula delivers instant color vibrancy and conditions lips for a hydrated feel.'
                            ,'B03');
insert into product values('NL02','The iconic lip bundle',
                            850.00,'2019-08-11','The bestsellers you crave. Get them together and save. Line and define with 15% off your custom lip duo. $50 value.'
                            ,'B03');
insert into product values('NL03','Audacious lipstick',
                            900.00,'2020-04-02','Lipstick so shamelessly seductive in touch and texture the sensation is audacious. glides on like satin with single-stroke coverage in a spectrum of shades.'
                            ,'B03');

                            

insert into product values('NB01','Nars Blush',
                            1500.00,'2019-02-17','The ultimate authority in blush, nars offers the industrys most iconic shades for cheeks.'
                            ,'B03');
insert into product values('NB02','Air matte blush',
                            1000.00,'2021-04-14','A unique mousse blush that transforms into a velvety powder for a weightless, cloud-like wash of cheek color.'
                            ,'B03');
insert into product values('NB03','The multiple',
                            1100.00,'2019-09-19','Franois nars iconic innovation, its the original multi-purpose stick for eyes, cheeks, lips and body. '
                            ,'B03');

                            
                            
insert into product values('NE01','Summer solstice eyeshadow palette',
                            1000.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine rich bronze and golden tones.'
                            ,'B03');
insert into product values('NE02','Uninhibited eyeshadow palette',
                            1550.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine high-pigment shades in matte, shimmering, and metallic finishes.'
                            ,'B03');
insert into product values('NE03','The orgasm bundle',
                            2500.00,'2021-01-01','The bestsellers you crave. Get them together and save. Experience the thrill with 15% off a custom Orgasm trio. $94 value.'
                            ,'B03');



insert into color values('C01','Orenge Red');
insert into color values('C02','Peach');                            
insert into color values('C03','Playful Pink');
insert into color values('C04','Sweet Pink');
insert into color values('C05','Plum');
insert into color values('C06','Warm Brown');
insert into color values('C07','Bronze');
insert into color values('C08','Luminous Gold');
insert into color values('C09','Khaki');
insert into color values('C10','Navy');
insert into color values('C11','Nude Pink');
insert into color values('C12','Rosy');                            
insert into color values('C13','Smoky');
insert into color values('C14','Fuchsia');
insert into color values('C15','Osee Satin');
insert into color values('C16','Rouge Orenge');
insert into color values('C17','Velvet');
insert into color values('C18','Hot Pink');
insert into color values('C19','Party Red');
insert into color values('C20','Diamond');
insert into color values('C21','Nude Orenge');
insert into color values('C22','Hot Orenge');
insert into color values('C23','Silver Gold');
insert into color values('C24','Red Brown');
insert into color values('C25','Chance');
insert into color values('C26','Zenith');
insert into color values('C27','Coco');
insert into color values('C28','Pimpante');
insert into color values('C29','Pirate');
insert into color values('C30','Rose Gold');
insert into color values('C31','Deep Sea');
insert into color values('C32','Nude Pink Gold');
insert into color values('C33','Red Plum');
insert into color values('C34','Flavor Pink');
insert into color values('C35','Orenge Peach');



insert into product_color values('C25','CL01');
insert into product_color values('C26','CL01');
insert into product_color values('C25','CL02');
insert into product_color values('C27','CL02');
insert into product_color values('C01','CL03');
insert into product_color values('C28','CL03');
insert into product_color values('C29','CL03');
insert into product_color values('C12','CB01');
insert into product_color values('C17','CB01');
insert into product_color values('C08','CB02');
insert into product_color values('C11','CB02');
insert into product_color values('C22','CB03');
insert into product_color values('C21','CB03');
insert into product_color values('C21','CE01');
insert into product_color values('C13','CE01');
insert into product_color values('C20','CE02');
insert into product_color values('C23','CE02');
insert into product_color values('C02','CE03');
insert into product_color values('C24','CE03');



insert into product_color values('C14','DL01');
insert into product_color values('C01','DL01');
insert into product_color values('C15','DL02');
insert into product_color values('C16','DL02');
insert into product_color values('C17','DL02');
insert into product_color values('C18','DL03');
insert into product_color values('C19','DL03');
insert into product_color values('C01','DB01');
insert into product_color values('C02','DB01');
insert into product_color values('C03','DB01');
insert into product_color values('C02','DB02');
insert into product_color values('C04','DB02');
insert into product_color values('C05','DB03');
insert into product_color values('C06','DB03');
insert into product_color values('C07','DE01');
insert into product_color values('C08','DE01');
insert into product_color values('C09','DE02');
insert into product_color values('C10','DE02');
insert into product_color values('C11','DE02');
insert into product_color values('C12','DE03');
insert into product_color values('C13','DE03');



insert into product_color values('C25','NL01');
insert into product_color values('C34','NL01');
insert into product_color values('C35','NL01');
insert into product_color values('C11','NL02');
insert into product_color values('C05','NL02');
insert into product_color values('C11','NL03');
insert into product_color values('C19','NL03');
insert into product_color values('C25','NB01');
insert into product_color values('C11','NB01');
insert into product_color values('C19','NB01');
insert into product_color values('C30','NB02');
insert into product_color values('C12','NB02');
insert into product_color values('C22','NB03');
insert into product_color values('C11','NB03');
insert into product_color values('C29','NE01');
insert into product_color values('C30','NE01');
insert into product_color values('C31','NE02');
insert into product_color values('C08','NE02');
insert into product_color values('C32','NE03');
insert into product_color values('C33','NE03');












 
 
 

