.class public Lcom/bzbs/data/AppSetting;
.super Ljava/lang/Object;
.source "AppSetting.java"


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:I

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static Q:Z

.field public static R:Ljava/lang/String;

.field public static S:Ljava/lang/String;

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:Ljava/lang/String;

.field public static W:Ljava/lang/String;

.field public static X:Ljava/lang/String;

.field public static Y:I

.field public static Z:I

.field public static a:Landroid/app/Activity;

.field public static aa:I

.field public static ab:I

.field public static ac:Z

.field public static ad:Ljava/lang/String;

.field public static ae:Ljava/lang/String;

.field public static af:I

.field public static ag:I

.field public static ah:I

.field public static ai:I

.field public static aj:I

.field public static ak:I

.field public static al:I

.field public static am:I

.field public static an:I

.field public static ao:I

.field public static ap:I

.field public static aq:J

.field public static ar:Z

.field public static as:Z

.field public static at:I

.field public static au:[Ljava/lang/String;

.field public static av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static aw:I

.field public static ax:I

.field public static ay:I

.field public static b:Lcom/samsung/privilege/activity/CardsUsedActivity;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x3840

    const/16 v5, 0x3c

    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->c:I

    .line 31
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->d:I

    .line 32
    invoke-static {v1, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->e:I

    .line 33
    const/4 v0, 0x7

    const/16 v1, 0x22

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/bzbs/data/AppSetting;->f:I

    .line 261
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    .line 280
    const-string/jumbo v0, "BuzzeBees_IsAutoLogin"

    sput-object v0, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    .line 284
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->i:Z

    .line 307
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    .line 311
    const-string/jumbo v0, "com.samsung.privilege"

    sput-object v0, Lcom/bzbs/data/AppSetting;->k:Ljava/lang/String;

    .line 314
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->l:Z

    .line 315
    const-string/jumbo v0, "android_gift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->m:Ljava/lang/String;

    .line 316
    const-string/jumbo v0, "android_gift_laos"

    sput-object v0, Lcom/bzbs/data/AppSetting;->n:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "android_gift_cambodia"

    sput-object v0, Lcom/bzbs/data/AppSetting;->o:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "android_gift_myanmar"

    sput-object v0, Lcom/bzbs/data/AppSetting;->p:Ljava/lang/String;

    .line 319
    const-string/jumbo v0, "70"

    sput-object v0, Lcom/bzbs/data/AppSetting;->q:Ljava/lang/String;

    .line 320
    const-string/jumbo v0, "5605"

    sput-object v0, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    .line 321
    const-string/jumbo v0, "5606"

    sput-object v0, Lcom/bzbs/data/AppSetting;->s:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "6363"

    sput-object v0, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    .line 323
    const-string/jumbo v0, "samsunggift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->u:Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "samsunggift_laos"

    sput-object v0, Lcom/bzbs/data/AppSetting;->v:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "samsunggift_cambodia"

    sput-object v0, Lcom/bzbs/data/AppSetting;->w:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "samsunggift_myanmar"

    sput-object v0, Lcom/bzbs/data/AppSetting;->x:Ljava/lang/String;

    .line 327
    const-string/jumbo v0, "123844944339"

    sput-object v0, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "956853005078"

    sput-object v0, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    .line 329
    const-string/jumbo v0, "899168542020"

    sput-object v0, Lcom/bzbs/data/AppSetting;->A:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "228227059976"

    sput-object v0, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    .line 331
    const-string/jumbo v0, "samsungthailandapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->C:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "galaxylaosclub@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->D:Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "samsungthailandapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->E:Ljava/lang/String;

    .line 334
    const-string/jumbo v0, "samsungmyanmarapps@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->F:Ljava/lang/String;

    .line 335
    const-string/jumbo v0, "galaxygiftthailand@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->G:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, "galaxylaosclub@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->H:Ljava/lang/String;

    .line 337
    const-string/jumbo v0, "galaxygiftthailand@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->I:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "galaxygiftmyanmar@gmail.com"

    sput-object v0, Lcom/bzbs/data/AppSetting;->J:Ljava/lang/String;

    .line 339
    const-string/jumbo v0, "campaign_gift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;

    .line 340
    const/16 v0, 0x9e

    sput v0, Lcom/bzbs/data/AppSetting;->L:I

    .line 341
    const-string/jumbo v0, "gift_welcome_popup"

    sput-object v0, Lcom/bzbs/data/AppSetting;->M:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "gift_laos_welcome_popup"

    sput-object v0, Lcom/bzbs/data/AppSetting;->N:Ljava/lang/String;

    .line 343
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->O:Ljava/lang/String;

    .line 344
    const-string/jumbo v0, ""

    sput-object v0, Lcom/bzbs/data/AppSetting;->P:Ljava/lang/String;

    .line 345
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 346
    const-string/jumbo v0, "https://api.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    .line 347
    const-string/jumbo v0, "https://buzzebees.blob.core.windows.net/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    .line 348
    const-string/jumbo v0, "https://www.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    .line 349
    const-string/jumbo v0, "https://misc.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->U:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "https://wallet.buzzebees.com/"

    sput-object v0, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    .line 351
    const-string/jumbo v0, "https://misc.buzzebees.com/gift/point_eng.html"

    sput-object v0, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "https://misc.buzzebees.com/gift/point_th.html"

    sput-object v0, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    .line 353
    sput v6, Lcom/bzbs/data/AppSetting;->Y:I

    .line 354
    const/16 v0, 0xe10

    sput v0, Lcom/bzbs/data/AppSetting;->Z:I

    .line 355
    sput v6, Lcom/bzbs/data/AppSetting;->aa:I

    .line 356
    sput v5, Lcom/bzbs/data/AppSetting;->ab:I

    .line 359
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->ac:Z

    .line 426
    const-string/jumbo v0, "GalaxyGift"

    sput-object v0, Lcom/bzbs/data/AppSetting;->ad:Ljava/lang/String;

    .line 468
    const-string/jumbo v0, "com.samsung.privilege"

    sput-object v0, Lcom/bzbs/data/AppSetting;->ae:Ljava/lang/String;

    .line 471
    sput v3, Lcom/bzbs/data/AppSetting;->af:I

    .line 472
    sput v3, Lcom/bzbs/data/AppSetting;->ag:I

    .line 473
    const/16 v0, 0x1388

    sput v0, Lcom/bzbs/data/AppSetting;->ah:I

    .line 474
    const/16 v0, 0x2710

    sput v0, Lcom/bzbs/data/AppSetting;->ai:I

    .line 475
    sput v4, Lcom/bzbs/data/AppSetting;->aj:I

    .line 476
    const/16 v0, 0x200

    sput v0, Lcom/bzbs/data/AppSetting;->ak:I

    .line 477
    sput v5, Lcom/bzbs/data/AppSetting;->al:I

    .line 479
    sput v3, Lcom/bzbs/data/AppSetting;->am:I

    .line 480
    sput v3, Lcom/bzbs/data/AppSetting;->an:I

    .line 481
    const/16 v0, 0x19

    sput v0, Lcom/bzbs/data/AppSetting;->ao:I

    .line 482
    const/16 v0, 0x32

    sput v0, Lcom/bzbs/data/AppSetting;->ap:I

    .line 484
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bzbs/data/AppSetting;->aq:J

    .line 488
    sput-boolean v3, Lcom/bzbs/data/AppSetting;->ar:Z

    .line 489
    sput-boolean v4, Lcom/bzbs/data/AppSetting;->as:Z

    .line 491
    const/16 v0, 0x1e

    sput v0, Lcom/bzbs/data/AppSetting;->at:I

    .line 524
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "user_birthday"

    aput-object v1, v0, v3

    const-string/jumbo v1, "email"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "user_friends"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bzbs/data/AppSetting;->au:[Ljava/lang/String;

    .line 550
    sget-object v0, Lcom/bzbs/data/AppSetting;->au:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->av:Ljava/util/List;

    .line 553
    sput v3, Lcom/bzbs/data/AppSetting;->aw:I

    .line 554
    sput v3, Lcom/bzbs/data/AppSetting;->ax:I

    .line 556
    sput v3, Lcom/bzbs/data/AppSetting;->ay:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 67
    :goto_10
    return-object v0

    .line 62
    :cond_11
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 63
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_10

    .line 64
    :cond_22
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 65
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_10

    .line 67
    :cond_33
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_10
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    if-eqz p0, :cond_39

    .line 87
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    const-string/jumbo v0, "fonts/kit55p.ttf"

    .line 97
    :goto_12
    return-object v0

    .line 89
    :cond_13
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 90
    const-string/jumbo v0, "fonts/phetsarath_ot.ttf"

    goto :goto_12

    .line 91
    :cond_24
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1109"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 92
    const-string/jumbo v0, "fonts/zawgyi_one.ttf"

    goto :goto_12

    .line 94
    :cond_35
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12

    .line 97
    :cond_39
    const-string/jumbo v0, "fonts/kit55p.ttf"

    goto :goto_12
.end method

.method public static c(Landroid/content/Context;)F
    .registers 5

    .prologue
    const/high16 v0, 0x41c00000    # 24.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 118
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 125
    :cond_11
    :goto_11
    return v0

    .line 120
    :cond_12
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 121
    goto :goto_11

    .line 122
    :cond_21
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 123
    goto :goto_11
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_7c

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 152
    :goto_13
    if-eqz v0, :cond_11e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11e

    .line 153
    const-string/jumbo v1, "45608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45604"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "45603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 154
    :cond_78
    const-string/jumbo v0, "1525635597652592"

    .line 164
    :goto_7b
    return-object v0

    .line 149
    :cond_7c
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 155
    :cond_81
    const-string/jumbo v1, "45701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string/jumbo v1, "45708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string/jumbo v1, "45703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string/jumbo v1, "45702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 156
    :cond_a5
    const-string/jumbo v0, "768830479847872"

    goto :goto_7b

    .line 157
    :cond_a9
    const-string/jumbo v1, "41405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    const-string/jumbo v1, "41401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    const-string/jumbo v1, "41406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 158
    :cond_c4
    const-string/jumbo v0, "517155661760483"

    goto :goto_7b

    .line 159
    :cond_c8
    const-string/jumbo v1, "52003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    const-string/jumbo v1, "52015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 160
    :cond_119
    const-string/jumbo v0, "402705486466922"

    goto/16 :goto_7b

    .line 164
    :cond_11e
    const-string/jumbo v0, "402705486466922"

    goto/16 :goto_7b
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_10a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    .line 175
    const-string/jumbo v1, "45608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45604"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "45603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 176
    :cond_69
    const-string/jumbo v0, "1525635597652592"

    .line 186
    :goto_6c
    return-object v0

    .line 177
    :cond_6d
    const-string/jumbo v1, "45701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string/jumbo v1, "45702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 178
    :cond_91
    const-string/jumbo v0, "768830479847872"

    goto :goto_6c

    .line 179
    :cond_95
    const-string/jumbo v1, "41405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string/jumbo v1, "41401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string/jumbo v1, "41406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 180
    :cond_b0
    const-string/jumbo v0, "517155661760483"

    goto :goto_6c

    .line 181
    :cond_b4
    const-string/jumbo v1, "52003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    const-string/jumbo v1, "52015"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 182
    :cond_105
    const-string/jumbo v0, "402705486466922"

    goto/16 :goto_6c

    .line 186
    :cond_10a
    const-string/jumbo v0, "402705486466922"

    goto/16 :goto_6c
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    sget-object v0, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    .line 209
    :goto_f
    return-object v0

    .line 204
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 205
    sget-object v0, Lcom/bzbs/data/AppSetting;->s:Ljava/lang/String;

    goto :goto_f

    .line 206
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 207
    sget-object v0, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    goto :goto_f

    .line 209
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->q:Ljava/lang/String;

    goto :goto_f
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    sget-object v0, Lcom/bzbs/data/AppSetting;->v:Ljava/lang/String;

    .line 221
    :goto_f
    return-object v0

    .line 216
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 217
    sget-object v0, Lcom/bzbs/data/AppSetting;->w:Ljava/lang/String;

    goto :goto_f

    .line 218
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 219
    sget-object v0, Lcom/bzbs/data/AppSetting;->x:Ljava/lang/String;

    goto :goto_f

    .line 221
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->u:Ljava/lang/String;

    goto :goto_f
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    sget-object v0, Lcom/bzbs/data/AppSetting;->N:Ljava/lang/String;

    .line 233
    :goto_f
    return-object v0

    .line 228
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 229
    sget-object v0, Lcom/bzbs/data/AppSetting;->O:Ljava/lang/String;

    goto :goto_f

    .line 230
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 231
    sget-object v0, Lcom/bzbs/data/AppSetting;->P:Ljava/lang/String;

    goto :goto_f

    .line 233
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->M:Ljava/lang/String;

    goto :goto_f
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    sget-object v0, Lcom/bzbs/data/AppSetting;->n:Ljava/lang/String;

    .line 245
    :goto_f
    return-object v0

    .line 240
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 241
    sget-object v0, Lcom/bzbs/data/AppSetting;->o:Ljava/lang/String;

    goto :goto_f

    .line 242
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 243
    sget-object v0, Lcom/bzbs/data/AppSetting;->p:Ljava/lang/String;

    goto :goto_f

    .line 245
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->m:Ljava/lang/String;

    goto :goto_f
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    sget-object v0, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    .line 270
    :goto_f
    return-object v0

    .line 265
    :cond_10
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1525635597652592"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 266
    sget-object v0, Lcom/bzbs/data/AppSetting;->A:Ljava/lang/String;

    goto :goto_f

    .line 267
    :cond_20
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 268
    sget-object v0, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    goto :goto_f

    .line 270
    :cond_30
    sget-object v0, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    goto :goto_f
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 300
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static l(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 560
    sget-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->e:Ljava/lang/String;

    .line 561
    sget-object v0, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    sput-object v0, Lcom/bzbs/lib/survey/LibConst;->f:Ljava/lang/String;

    .line 562
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 563
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 564
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 565
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 566
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;J)Z

    .line 567
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 569
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;Z)Z

    .line 570
    invoke-static {p0, v2}, Lcom/bzbs/lib/survey/LibUserLogin;->b(Landroid/content/Context;Z)Z

    .line 571
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->G(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;Z)Z

    .line 572
    return-void
.end method
