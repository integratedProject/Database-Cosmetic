<<<<<<< HEAD:db.sql

=======
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
    productimage   VARCHAR(2000),
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


insert into product values('DL01','Rouge Dior','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/460/498/90/0/%252FY0172009%252FV007%252FY0172009_C017500999_E01_GHC.jpg?imwidth=460',
                            1750.00,'1997-02-20','Rouge Dior is the Dior lipstick with couture colors. True floral lip care, it is enriched with red peony and pomegranate flower extracts of natural origin. Rouge Dior dresses the lips in 75 bold colors with satin, matte, metallic or velvet finishes. Long-wear lipstick that ensures 16 hours of comfort* on the lips.'
                            ,'B02');
insert into product values('DL02','Rouge Dior The Refill','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0996177%252FV003%252FY0996177_C317500999_E01_ZHC.jpg?imwidth=870',
                            1800.00,'1997-02-23','The new Rouge Dior refill brings an eco-designed format to the iconic lipstick. Once the stick is finished, any of the 75 couture colors may be chosen to endlessly switch it up with a new shade.'
                            ,'B02');
insert into product values('DL03','Rouge Dior Forever Liquid','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0996265%252FV001%252FY0996265_C025400999_E01_ZHC.jpg?imwidth=870',
                            1700.00,'1999-03-10','Rouge Dior Forever Liquid is the 1st ultra-pigmented, transfer-proof liquid Dior lipstick, with vibrant, ultra-matte colors that withstand contact. With striking color, the liquid lipstick wont settle into lip lines, fade, budge, or feather, even on fabric and masks.'
                            ,'B02');
insert into product values('DL04','Rouge Dior Ultra Rouge','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0038009%252FV002%252FY0038009_C003800999_E01_ZHC.jpg?imwidth=870',
                            1750.00,'1998-03-11','Always at the cutting edge, Dior challenged its research department to combine the desire for dazzling colour with the need for long-lasting comfort.'
                            ,'B02');
insert into product values('DL05','Dior Addict Stellar Shine','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0048000%252FV002%252FY0048000_C004800976_E01_ZHC.jpg?imwidth=870',
                            1600.00,'2019-08-07','Dior Addict Stellar Shine is the next-generation lip shine that delivers 8h* of unparalleled shine.** The balm glides on with incredible sensoriality and instantly melts in contact with the lips for shine with sheer, vibrant colour.'
                            ,'B02');
insert into product values('DL06','Dior Addict Lacquer Stick','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/horizon%252Fcovers%252FY0028808_F002880877_E01_ZHC.jpg?imwidth=870',
                            1650.00,'2016-06-21','Try Dior Addict Lacquer Stick, the new-generation lacquer stick by Dior, as easy to apply as it is to wear. A stick with a "lip fondant" effect that liberates all the colour and shine of a lacquer, plus the comfort of a balm, with 6 hours* of wear and unrivaled texture.'
                            ,'B02');
                            


insert into product values('DB01','Dior Forever Natural Bronze','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0216000%252FV002%252FY0216000_C021600001_E01_ZHC.jpg?imwidth=870',
                            1700.00,'2020-05-12','Dior Forever Natural Bronze powder bronzer recreates in a single step the sun caress on the skin for a complexion that is radiant with vitality.'
                            ,'B02');
insert into product values('DB02','Rouge Blush','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0000004%252FV002%252FY0000004_C000000999_E01_ZHC.jpg?imwidth=870',
                            1750.00,'2001-03-10','Rouge Blush is the only* blush that gives cheeks intense, ultra-pigmented colour while ensuring long-wear makeup. The iconic shades of the Rouge Blush powder are inspired by the emblematic Rouge Dior lipstick. Colour intensity is buildable to suit your desires for a soft or bold finish. Rouge Blush is available in several finishes: matte, iridescent or satiny.'
                            ,'B02');
insert into product values('DB03','Dior Backstage Rosy Glow','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0127001%252FV004%252FY0127001_C012700003_E01_ZHC.jpg?imwidth=870',
                            1800.00,'2019-11-28','Rosy Glow universal blush is the Dior makeup artists secret weapon to create the appearance of naturally rosy cheeks, for a fresh effect, as if brightened from the inside.'
                            ,'B02');
insert into product values('DB04','ROUGE BLUSH - COLOR GAMES','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0147004%252FV001%252FY0147004_C014700431_E01_ZHC.jpg?imwidth=870',
                            1850.00,'2021-04-26','The only blush* that gives cheeks intense, ultra-pigmented colour, Rouge Blush powder also offers long-lasting wear. The Rouge Blush Color Games limited edition with a new* limited edition compact motif is available in two new exclusive shades.*'
                            ,'B02');
insert into product values('DB05','ROUGE BLUSH - LIMITED EDITION','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/horizon%252FFallLook2019%252FY0097007%252FY0097007_C009700783_E01_ZHC.jpg?imwidth=870',
                            2000.00,'1999-09-19','This fall, Rouge Blush is decorated with an exclusive* and fascinating optical illusion motif to highlight cheeks with boldly feminine colour. Rouge Blush is our only blush that gives cheeks intense, ultra-pigmented, long-wearing colour .'
                            ,'B02');
insert into product values('DB06','DIORSKIN MINERAL NUDE BRONZE','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/horizon%252Fcovers%252FY0020000_C002000002_E01_ZHC.jpg?imwidth=870',
                            1700.00,'2011-11-11','Diorskin Mineral Nude Bronze powder, infused with golden minerals, captures the light and enhances the effects of sun on the skin. It warms the complexion for a unique, natural and luminous effect.'
                            ,'B02');
                            


insert into product values('DE01','5 COULEURS COUTURE','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0139000%252FV003%252FY0139000_C013900279_E01_ZHC.jpg?imwidth=870',
                            1700.00,'2000-04-10','The iconic 5 Couleurs eyeshadow palette has been reinvented to become 5 Couleurs Couture.Each eyeshadow palette  Denim, Black Bow, Rouge Trafalgar and Mitzah  corresponds to an iconic piece of the Dior wardrobe, offering a nuanced array of intense shades that are easy to use and combine.'
                            ,'B02');
insert into product values('DE02','5 COULEURS COUTURE - SUMMER DUNE','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0218006%252FV001%252FY0218006_C021800699_E01_ZHC.jpg?imwidth=870',
                            1800.00,'2016-06-16','From intense bronze tones to sparkling gold, the eyeshadow shades explore a new approach to color that plays with the warm and golden shimmer of the sun, for natural and luminous eye makeup.'
                            ,'B02');
insert into product values('DE03','5 COULEURS DESIGNER','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/horizon%252Fcovers%252FY0148140_F014814208_E01_ZHC.jpg?imwidth=870',
                            1750.00,'2021-04-26','Born of Backstage expertise, inspired by professional techniques and textures, 5 COULEURS DESIGNER features an easy, 5-step makeup lesson (base, 2 shadows, highlighter and liner) to bring out the eyes with flawless sculpting and colour gradation.'
                            ,'B02');
insert into product values('DE04','3 COULEURS TRI(O)BLIQUE - LIMITED EDITION','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/Y0092000%252FV001%252FY0092000_C009200853_E01_ZHC.jpg?imwidth=870',
                            1850.00,'2021-04-26','Inspired by the Dior Oblique collection, the 3 Couleurs Tri(O)blique eyeshadow palette offers a trio of colours and effects: metallic, sparkly and velvety matte. Highlight your eyes with couture creations!'
                            ,'B02');
insert into product values('DE05','DIOR BACKSTAGE - CUSTOM EYE PALETTE','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/%252FY0996042%252FV002%252FY0996042_C010800001_E01_ZHC.jpg?imwidth=870',
                            1650.00,'2021-04-26','Its unique* gel transforms eyeshadow textures into an intense liner. * At Dior.'
                            ,'B02');
insert into product values('DE06','DIORSHOW FUSION MONO MATTE','https://www.dior.com/beauty/version-5.1610097138806/resize-image/ep/870/580/90/0/horizon%252Fcovers%252FY0148310_F014831761_E01_ZHC.jpg?imwidth=870',
                            1600.00,'2012-08-10','A weightless texture that blends into the skin and dresses the eye in velvety colour. In a single step, it creates an even and intense matte finish for a professional makeup effect.'
                            ,'B02');



insert into product values('CL01','Rouge coco bloom','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/rouge-coco-bloom-hydrating-plumping-intense-shine-lip-colour-110-chance-0-11oz#packshot-default-172110-8835357736990.jpg',
                            1450.00,'2016-06-10','And a new luster was born: intense, plump, and long-lasting, ROUGE COCO BLOOM is the lipstick that exudes a luster of beauty.CHANEL Research has created the first lip color to replenish moisture and plumpness. And long-lasting with a striking luster In a patented product formula.'
                            ,'B01');
insert into product values('CL02','Rouge coco','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/rouge-coco-ultra-hydrating-lip-colour-434-mademoiselle-0-12oz#packshot-default-172434-8804334895134.jpg',
                            1450.00,'2020-02-29','ROUGE COCO, the signature lipstick of CHANEL. Revamped to provide smoothness, comfort, radiance and all-day hydration. Inspired by Mademoiselle Chanel s close friends group, who briefly call her Coco, ROUGE COCOs 24 new shades include Arthur, Adrienne, Roussy, Dimitri, and more.'
                            ,'B01');
insert into product values('CL03','Rouge allure ink','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/rouge-allure-ink-matte-liquid-lip-colour-222-signature-0-2fl-oz#packshot-default-165222-8819745095710.jpg',
                            1450.00,'2019-02-14','ROUGE ALLURE INK matte liquid lipstick For colors that stand out and shine With light and dark texture Immediately absorbed into the lips for a light touch. For long-lasting color results (over 8 hours *), an alluring challenge that doesnt look out of sight.'
                            ,'B01');
insert into product values('CL04','Rouge coco stylo','https://www.chanel.com/images//t_one//w_0.45,h_0.45,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/rouge-coco-stylo-complete-care-lipshine-226-calligraphie-2g-packshot-default-170226-8833980301342.jpg',
                            1450.00,'2019-03-22','ROUGE COCO STYLO Lipstick in a pen that gives your lips your style. Ready to be outstanding in one step A travel-sized lipstick that goes wherever you go. With ingredients that combine the vivid colors of lipstick Radiance The shine of a lip gloss And the lightness of lip balm with ROUGE COCO STYLO, the new look of makeup'
                            ,'B01');
insert into product values('CL05','Rouge allure','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/rouge-allure-luminous-intense-lip-colour-99-pirate-0-12oz#packshot-default-160990-8800032784414.jpg',
                            1450.00,'2020-06-10','Lipstick that brings vitality and luminosity. With a very light texture Absorbs quickly Like a second skin A wide variety of bold shades For a style that stands out and defies. The result A deep, luminous make-up with a satin finish. Provides flawless color even for the first time.'
                            ,'B01');
insert into product values('CL06','Le rouge crayon de couleur','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/le-rouge-crayon-de-couleur-jumbo-longwear-lip-crayon-n-2-rose-violine-0-04oz#packshot-default-187237-8800038912030.jpg',
                            1450.00,'2019-06-21','The LE ROUGE CRAYON DE COULEUR lipstick by CHANEL makes it easy to apply. With the form of an extra large that is easy to carry. Ready to carry with you anywhere For you to enjoy and color every time With the tip of the lipstick holder that can be easily adjusted up and down To reveal vibrant colors Satin texture And vivid colors With a long-lasting, lightweight formula that lasts more than 4 hours * after the first application. Let the art of color become a fun area.'
                            ,'B01');

                            
                            

insert into product values('CB01','Palette essentielle','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/palette-essentielle-conceal-highlight-color-150-beige-clair-0-31oz#packshot-default-149150-8800829931550.jpg',
                            2550.00,'2020-06-23','A palette for the face with 3 values ??in one. Both the value of concealing, highlighting and coloring for a bright and glowing complexion. A face palette with a variety of features. Along with a design inspired by the "Coco Crush" jewelry collection that includes blush, concealer and highlighter. For a bright and glowing result that lasts all day'
                            ,'B01');
insert into product values('CB02','Palette essentielle','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/palette-essentielle-ete-highlight-color-190-eclat-solaire-0-31oz#packshot-default-149190-8835355574302.jpg',
                            2550.00,'2020-06-23','PALETTE ESSENTIELLE HIGHLIGHT CREAM FOR SUMMER. Two in one value of a cream highlighter for the face and to add color with just the tip of the brush. The perfect match of three colors for easy makeup application at any time of the day. Both highlighter creams that fill light-prone areas of the face. With a bright red to highlight the cheekbones or as a lip tint. So your skin looks vibrant again and your face looks radiant. Sparkling, brimming with beauty'
                            ,'B01');
insert into product values('CB03','Joues contraste','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/joues-contraste-powder-blush-170-rose-glacier-0-12oz#packshot-default-168170-8808320368670.jpg',
                            2000.00,'2019-05-15','This blush that will become an indispensable item will brighten up your complexion. Helps to contour the face with a healthy glow effect. This color-and-luminous blush accentuates the cheekbones and makes the face look brighter. Its fine powdery texture makes it easy to apply on the skin. The cartridge is designed to be easily carried anywhere, so you can easily add color on your face anytime.'
                            ,'B01');
insert into product values('CB04','Perles de lumire','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/perles-de-lumiere-illuminating-blush-powder-0-28oz#packshot-default-151547-8838252265502.jpg',
                            2700.00,'2018-08-01','An exclusive creations, PERLES DE LUMIRE is a pearl-inspired blush of Gabriel. CHANEL is worn to brighten and brighten your skin. This fine pearly-patterned powder adds a soft, iridescent light to the spots where light strikes the face.'
                            ,'B01');
insert into product values('CB05','Fleurs de printemps','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/fleurs-de-printemps-blush-and-highlighter-duo-0-28oz#packshot-default-151560-8831690833950.jpg',
                            2700.00,'2017-06-12','Exclusive Creations, FLEURS DE PRINTEMPS, a featured product in the Spring-Summer 2021 duo collection. Contains a radiant coral blush and a satin rosy peach highlighter. The luster of silk, the seductive and luxurious that CHANEL has created, gives a sparkle and sparkle, revealing a woman of happiness and joy.'
                            ,'B01');
insert into product values('CB06','Les tissages de chanel','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/les-tissages-de-chanel-blush-duo-tweed-effect-10-tweed-pink-0-19oz#packshot-default-169310-8833980891166.jpg',
                            2100.00,'2019-07-10','A two-tone blush that combines the elegance, simplicity and durability of a CHANEL tweed jacket. The tweed fabric, at the heart and of the CHANEL brands legend, has become an indispensable sparkling make-up. Weave subtle silver and gold tones into a blush color. Makes cheeks shine naturally healthy throughout the day.'
                            ,'B01');

                            


insert into product values('CE01','Les 4 ombres','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/les-4-ombres-makeup-collection-la-fleur-et-l-eau-356-au-fil-des-fleurs-2g-packshot-default-164356-8823731257374.jpg',
                            2550.00,'2019-11-18','A new two-tone palette inspired by flowers. The river and the coming of spring reflect the beauty and simplicity of nature. This four-tone, two-tone eyeshadow palette is decorated with camellia motifs with a wide range of satin and sparkling effects. This formula offers a soft texture designed for ease of use. A beautiful, consistent color.'
                            ,'B01');
insert into product values('CE02','Les 4 ombres','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/les-4-ombres-multi-effect-quadra-eyeshadow-334-modern-glamour-0-07oz#packshot-default-164334-8819563626526.jpg',
                            2450.00,'2016-06-21','Four shades of eyeshadow That provides a modern perspective for creative beauty. The latest recipe adaptation, the team baked gentle and easy to color with more intense colors. The perfect combination of colors Provides a radiant and smooth glow all day long. Makeup shades deliver results such as Matt satin surfaces reflect light and sparkle with metallic'
                            ,'B01');
insert into product values('CE03','Ombre premiere top coat','https://www.chanel.com/images//t_one//w_0.38,h_0.38,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/ombre-premiere-top-coat-ombre-premiere-top-coat-br-exclusive-creation-limited-edition-327-penombre-2-2g-packshot-default-176327-8818861703198.jpg',
                            1400.00,'2020-12-16','Lucia Pica changes the rules of beauty with LA COLLECTION NOIR ET BLANC DE CHANEL, CHANEL s latest global creative make-up and designer. Introducing endless shades of black and white, Lucia Pica has partnered with Makeup Creation Studio to create a limited edition eyeshadow.'
                            ,'B01');
insert into product values('CE04','Ombre premiere','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/ombre-premiere-longwear-powder-eyeshadow-12-rose-synthetique-0-08oz#packshot-default-176012-8800821641246.jpg',
                            1380.00,'2015-12-11','A soft, easy-to-spread powder texture that is long-lasting and offers a bold color. With a palette that offers shimmering shades with all 3 types of textures: matte, satin and metallic'
                            ,'B01');
insert into product values('CE05','Les 4 ombres','https://www.chanel.com/images//t_one//w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/les-4-ombres-exclusive-creation-in-legerete-et-experience-legerete-et-experience-0-07oz#packshot-default-148797-8835359506462.jpg',
                            2500.00,'2015-12-11','Four eyeshadow shades with the ultimate in modernity. The superb formula combines a gentle texture and makes it easy to apply. The result of full color, evenly, looks brilliant and lasts all day long.'
                            ,'B01');
insert into product values('CE06','Les beiges eyeshadow palette','https://www.chanel.com/images//t_one//w_0.43,h_0.43,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_620/les-beiges-healthy-glow-natural-eyeshadow-palette-warm-0-16oz#packshot-default-184189-8826684440606.jpg',
                            2800.00,'2019-11-18','LES BEIGES HEALTHY GLOW NATURAL EYESHADOW PALETTE LES BEIGES HEALTHY GLOW NATURAL EYESHADOW PALETTE Reveal lustrous, refreshed and well-rested eyes at any time of the day with 5 natural-looking and easy-to-apply shades. All in one The LES BEIGES HEALTHY GLOW NATURAL EYESHADOW PALETTE can be used as an eyeshadow, base, eyeliner or eyeshadow palette. No matter what form it is used Silk-like soft texture makes it easy to apply. In the iconic case of LES BEIGES with a large hand mirror and 3 paint tools.'
                            ,'B01');

                            
                            

insert into product values('NL01','Nars Lipstick','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw237cad07/hi-res/0607845029441.jpg?sw=856&sh=750&sm=fit',
                            850.00,'2019-06-21','A new lineup of lipstick in matte, satin, and sheer finishes. innovative new formula delivers instant color vibrancy and conditions lips for a hydrated feel.'
                            ,'B03');
insert into product values('NL02','The iconic lip bundle','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw70e5f8cd/2020/October/Product_Sets/THE_ICONIC_LIP_BUNDLE.jpg?sw=856&sh=750&sm=fit',
                            1350.00,'2019-08-11','The bestsellers you crave. Get them together and save. Line and define with 15% off your custom lip duo. $50 value.'
                            ,'B03');
insert into product values('NL03','Audacious lipstick','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwb6172f7a/hi-res/0607845094609.jpg?sw=856&sh=750&sm=fit',
                            1100.00,'2020-04-02','Lipstick so shamelessly seductive in touch and texture the sensation is audacious. glides on like satin with single-stroke coverage in a spectrum of shades.'
                            ,'B03');
insert into product values('NL04','Audacious sheer matte lipstick','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw2ca734b2/2020/December/Claudette_2020/Sheer_Matte_Lipstick/Anouk/0194251003177_soldier.jpg?sw=856&sh=750&sm=fit',
                            1100.00,'2020-04-03','A limited edition matte lipstick featuring medium-sheer coverage and a soft-focus finish.'
                            ,'B03');
insert into product values('NL05','Audacious lipstick','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw71fb1239/2020/December/Claudette_2020/Audacious_Lipstick/Claudette/0194251009186_soldier.jpg?sw=856&sh=750&sm=fit',
                            1100.00,'2020-04-03','Four limited edition shades of our most luxurious lipstick formula. provides bold, single-stroke color in just one swipe.'
                            ,'B03');
insert into product values('NL06','Air matte lip color','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwbec8d586/2021/January/AirMatte/Lip/0194251000312-soldier.jpg?sw=856&sh=750&sm=fit',
                            850.00,'2019-06-21',' Four limited edition shades of our most luxurious lipstick formula. provides bold, single-stroke color in just one swipe.'
                            ,'B03');

                            
                            

insert into product values('NB01','Nars Blush','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwf7aa4788/hi-res/0607845040132.jpg?sw=856&sh=750&sm=fit',
                            1000.00,'2019-02-17','The ultimate authority in blush, nars offers the industrys most iconic shades for cheeks.'
                            ,'B03');
insert into product values('NB02','Air matte blush','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwc4a07701/2021/January/AirMatte/Blush/torch-soldier.jpg?sw=856&sh=750&sm=fit',
                            1000.00,'2021-04-14','A unique mousse blush that transforms into a velvety powder for a weightless, cloud-like wash of cheek color.'
                            ,'B03');
insert into product values('NB03','The multiple','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwade78599/hi-res/0607845015178.jpg?sw=856&sh=750&sm=fit',
                            1250.00,'2019-09-19','Franois nars iconic innovation, its the original multi-purpose stick for eyes, cheeks, lips and body. '
                            ,'B03');
insert into product values('NB04','Liquid blush','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw70d0e28a/hi-res/0607845051558.jpg?sw=856&sh=750&sm=fit',
                            1000.00,'2020-11-18','A rush of natural-looking color in a new, liquid blush formula that builds easily, blends effortlessly.'
                            ,'B03');
insert into product values('NB05','The air matte lip & cheek bundle','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwc073ec70/2021/March/Sets/air-matte-bundle_soldier.jpg?sw=856&sh=750&sm=fit',
                            1500.00,'2021-04-04','The bestsellers you crave. Get them together and save. Dare to air with 15% off a custom lip and cheek duo. $56 value.'
                            ,'B03');
insert into product values('NB06','Uninhibited blush duo','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw0c78a33e/2021/February/Uninhibited/0194251025506-soldier.jpg?sw=856&sh=750&sm=fit',
                            1400.00,'2020-06-04','Unveil your ultimate glow with an oversized blush palette featuring bestsellers Deep Throat, a soft pink with golden sheen, and Tempted, a shimmering beige. Superfine, micronized powder pigments ensure an irresistibly silky application while sensual shades flatter with a soft-focus finish. All passion. No limits.'
                            ,'B03');

                            
                            
insert into product values('NE01','Summer solstice eyeshadow palette','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw81e22187/2021/April/BronzeCollection/0194251011455_eyepalette_soldieropen.jpg?sw=856&sh=750&sm=fit',
                            1550.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine rich bronze and golden tones.'
                            ,'B03');
insert into product values('NE02','Uninhibited eyeshadow palette','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwdecd47de/2021/February/Uninhibited/0194251015323-soldier.jpg?sw=856&sh=750&sm=fit',
                            1550.00,'2019-03-13','A limited-edition eyeshadow palette featuring nine high-pigment shades in matte, shimmering, and metallic finishes.'
                            ,'B03');
insert into product values('NE03','The orgasm bundle','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dwa8bc3ed0/2021/March/Sets/orgasm-bundle_soldier.jpg?sw=856&sh=750&sm=fit',
                            2500.00,'2021-01-01','The bestsellers you crave. Get them together and save. Experience the thrill with 15% off a custom Orgasm trio. $94 value.'
                            ,'B03');
insert into product values('NE04','ST germain des prs eyeshadow palette','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw7452de63/2020/December/Claudette_2020/Eyeshadow/0194251006079_soldier.jpg?sw=856&sh=750&sm=fit',
                            1550.00,'2020-05-15','A limited edition eyeshadow palette featuring six warm, neutral shades in matte, satin, and shimmer finishes. '
                            ,'B03');
insert into product values('NE05','Euphoria face palette','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw1091435a/2020/December/Euphora_Face_Palette/0194251010465_Soldier.jpg?sw=856&sh=750&sm=fit',
                            1850.00,'2019-12-29','A limited-edition palette featuring eight eyeshadows and three glistening shades of highlighter.'
                            ,'B03');
insert into product values('NE06','Powerchrome loose eye pigment','https://www.narscosmetics.com/dw/image/v2/BBSK_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw35ceff90/hi-res/0607845091325.jpg?sw=856&sh=750&sm=fit',
                            880.00,'2020-06-12','A Loose, densely packed metallic eye pigment that glides onto lids with intense payoff in a foil-like effect.'
                            ,'B03');


insert into color values('C01','Red');
insert into color values('C02','Pink');                            
insert into color values('C03','Orange');
insert into color values('C04','Nude');
insert into color values('C05','Brown');
insert into color values('C06','Berry');
insert into color values('C07','Peach');
insert into color values('C08','Purple');
insert into color values('C09','Blue');
insert into color values('C10','Multi');
 


insert into product_color values('C02','DL01');
insert into product_color values('C01','DL01');
insert into product_color values('C07','DL01');
insert into product_color values('C09','DL01');
insert into product_color values('C09','DL02');
insert into product_color values('C07','DL02');
insert into product_color values('C05','DL02');
insert into product_color values('C06','DL02');
insert into product_color values('C01','DL03');
insert into product_color values('C02','DL03');
insert into product_color values('C03','DL03');
insert into product_color values('C04','DL03');
insert into product_color values('C05','DL04');
insert into product_color values('C08','DL04');
insert into product_color values('C10','DL04');
insert into product_color values('C07','DL04');
insert into product_color values('C09','DL05');
insert into product_color values('C04','DL05');
insert into product_color values('C03','DL05');
insert into product_color values('C02','DL05');
insert into product_color values('C01','DL06');
insert into product_color values('C02','DL06');
insert into product_color values('C05','DL06');
insert into product_color values('C07','DL06');



insert into product_color values('C01','CL01');
insert into product_color values('C05','CL01');
insert into product_color values('C07','CL01');
insert into product_color values('C09','CL01');
insert into product_color values('C03','CL02');
insert into product_color values('C05','CL02');
insert into product_color values('C06','CL02');
insert into product_color values('C10','CL02');
insert into product_color values('C01','CL03');
insert into product_color values('C03','CL03');
insert into product_color values('C05','CL03');
insert into product_color values('C09','CL03');
insert into product_color values('C01','CL04');
insert into product_color values('C02','CL04');
insert into product_color values('C05','CL04');
insert into product_color values('C07','CL04');
insert into product_color values('C03','CL05');
insert into product_color values('C07','CL05');
insert into product_color values('C09','CL05');
insert into product_color values('C10','CL05');
insert into product_color values('C01','CL06');
insert into product_color values('C02','CL06');
insert into product_color values('C03','CL06');
insert into product_color values('C04','CL06');



insert into product_color values('C01','NL01');
insert into product_color values('C02','NL01');
insert into product_color values('C03','NL01');
insert into product_color values('C04','NL01');
insert into product_color values('C02','NL02');
insert into product_color values('C05','NL02');
insert into product_color values('C06','NL02');
insert into product_color values('C07','NL02');
insert into product_color values('C01','NL03');
insert into product_color values('C04','NL03');
insert into product_color values('C06','NL03');
insert into product_color values('C08','NL03');
insert into product_color values('C02','NL04');
insert into product_color values('C05','NL04');
insert into product_color values('C09','NL04');
insert into product_color values('C10','NL04');
insert into product_color values('C03','NL05');
insert into product_color values('C04','NL05');
insert into product_color values('C05','NL05');
insert into product_color values('C06','NL05');
insert into product_color values('C04','NL06');
insert into product_color values('C08','NL06');
insert into product_color values('C09','NL06');
insert into product_color values('C10','NL06');


insert into product_color values('C01','CB01');
insert into product_color values('C03','CB01');
insert into product_color values('C04','CB01');
insert into product_color values('C07','CB01');
insert into product_color values('C02','CB02');
insert into product_color values('C04','CB02');
insert into product_color values('C05','CB02');
insert into product_color values('C08','CB02');
insert into product_color values('C03','CB03');
insert into product_color values('C04','CB03');
insert into product_color values('C05','CB03');
insert into product_color values('C09','CB03');
insert into product_color values('C05','CB04');
insert into product_color values('C06','CB04');
insert into product_color values('C09','CB04');
insert into product_color values('C10','CB04');
insert into product_color values('C03','CB05');
insert into product_color values('C05','CB05');
insert into product_color values('C08','CB05');
insert into product_color values('C09','CB05');
insert into product_color values('C02','CB06');
insert into product_color values('C06','CB06');
insert into product_color values('C08','CB06');
insert into product_color values('C10','CB06');



insert into product_color values('C01','DB01');
insert into product_color values('C03','DB01');
insert into product_color values('C04','DB01');
insert into product_color values('C05','DB01');
insert into product_color values('C02','DB02');
insert into product_color values('C03','DB02');
insert into product_color values('C04','DB02');
insert into product_color values('C05','DB02');
insert into product_color values('C01','DB03');
insert into product_color values('C03','DB03');
insert into product_color values('C05','DB03');
insert into product_color values('C07','DB03');
insert into product_color values('C03','DB04');
insert into product_color values('C05','DB04');
insert into product_color values('C06','DB04');
insert into product_color values('C09','DB04');
insert into product_color values('C02','DB05');
insert into product_color values('C03','DB05');
insert into product_color values('C05','DB05');
insert into product_color values('C10','DB05');
insert into product_color values('C05','DB06');
insert into product_color values('C06','DB06');
insert into product_color values('C07','DB06');
insert into product_color values('C08','DB06');



insert into product_color values('C01','NB01');
insert into product_color values('C02','NB01');
insert into product_color values('C03','NB01');
insert into product_color values('C04','NB01');
insert into product_color values('C03','NB02');
insert into product_color values('C04','NB02');
insert into product_color values('C05','NB02');
insert into product_color values('C06','NB02');
insert into product_color values('C02','NB03');
insert into product_color values('C04','NB03');
insert into product_color values('C08','NB03');
insert into product_color values('C10','NB03');
insert into product_color values('C03','NB04');
insert into product_color values('C08','NB04');
insert into product_color values('C09','NB04');
insert into product_color values('C10','NB04');
insert into product_color values('C01','NB05');
insert into product_color values('C04','NB05');
insert into product_color values('C08','NB05');
insert into product_color values('C09','NB05');
insert into product_color values('C07','NB06');
insert into product_color values('C08','NB06');
insert into product_color values('C09','NB06');
insert into product_color values('C10','NB06');



insert into product_color values('C01','DE01');
insert into product_color values('C03','DE01');
insert into product_color values('C05','DE01');
insert into product_color values('C09','DE01');
insert into product_color values('C02','DE02');
insert into product_color values('C04','DE02');
insert into product_color values('C06','DE02');
insert into product_color values('C10','DE02');
insert into product_color values('C02','DE03');
insert into product_color values('C05','DE03');
insert into product_color values('C07','DE03');
insert into product_color values('C09','DE03');
insert into product_color values('C05','DE04');
insert into product_color values('C06','DE04');
insert into product_color values('C08','DE04');
insert into product_color values('C10','DE04');
insert into product_color values('C01','DE05');
insert into product_color values('C02','DE05');
insert into product_color values('C05','DE05');
insert into product_color values('C08','DE05');
insert into product_color values('C01','DE06');
insert into product_color values('C03','DE06');
insert into product_color values('C05','DE06');
insert into product_color values('C07','DE06');



insert into product_color values('C02','CE01');
insert into product_color values('C04','CE01');
insert into product_color values('C05','CE01');
insert into product_color values('C08','CE01');
insert into product_color values('C01','CE02');
insert into product_color values('C03','CE02');
insert into product_color values('C06','CE02');
insert into product_color values('C07','CE02');
insert into product_color values('C01','CE03');
insert into product_color values('C02','CE03');
insert into product_color values('C03','CE03');
insert into product_color values('C04','CE03');
insert into product_color values('C02','CE04');
insert into product_color values('C05','CE04');
insert into product_color values('C07','CE04');
insert into product_color values('C10','CE04');
insert into product_color values('C03','CE05');
insert into product_color values('C04','CE05');
insert into product_color values('C05','CE05');
insert into product_color values('C08','CE05');
insert into product_color values('C04','CE06');
insert into product_color values('C06','CE06');
insert into product_color values('C08','CE06');
insert into product_color values('C10','CE06');




insert into product_color values('C01','NE01');
insert into product_color values('C03','NE01');
insert into product_color values('C05','NE01');
insert into product_color values('C06','NE01');
insert into product_color values('C05','NE02');
insert into product_color values('C06','NE02');
insert into product_color values('C07','NE02');
insert into product_color values('C09','NE02');
insert into product_color values('C02','NE03');
insert into product_color values('C03','NE03');
insert into product_color values('C04','NE03');
insert into product_color values('C10','NE03');
insert into product_color values('C02','NE04');
insert into product_color values('C03','NE04');
insert into product_color values('C05','NE04');
insert into product_color values('C08','NE04');
insert into product_color values('C01','NE05');
insert into product_color values('C04','NE05');
insert into product_color values('C08','NE05');
insert into product_color values('C10','NE05');
insert into product_color values('C06','NE06');
insert into product_color values('C07','NE06');
insert into product_color values('C09','NE06');
insert into product_color values('C10','NE06');









 
 
 

