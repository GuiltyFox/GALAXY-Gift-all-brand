.class Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1500
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1485
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    .line 1486
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    .line 1488
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    .line 1489
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    .line 1491
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    .line 1492
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    .line 1493
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    .line 1494
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    .line 1496
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    .line 1497
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    .line 1498
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    .line 1502
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1505
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1485
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    .line 1486
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    .line 1488
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    .line 1489
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    .line 1491
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    .line 1492
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    .line 1493
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    .line 1494
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    .line 1496
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    .line 1497
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    .line 1498
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    .line 1506
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->p:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->p:[I

    .line 1508
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    .line 1509
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    .line 1510
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    .line 1511
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    .line 1512
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->e:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->e:I

    .line 1513
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    .line 1514
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    .line 1515
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    .line 1516
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    .line 1518
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    .line 1519
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    .line 1520
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    .line 1521
    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .registers 3

    .prologue
    .line 1524
    packed-switch p1, :pswitch_data_e

    .line 1532
    :goto_3
    return-object p2

    .line 1526
    :pswitch_4
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_3

    .line 1528
    :pswitch_7
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    .line 1530
    :pswitch_a
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_3

    .line 1524
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .registers 3

    .prologue
    .line 1537
    packed-switch p1, :pswitch_data_e

    .line 1545
    :goto_3
    return-object p2

    .line 1539
    :pswitch_4
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_3

    .line 1541
    :pswitch_7
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_3

    .line 1543
    :pswitch_a
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_3

    .line 1537
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 1566
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->p:[I

    .line 1573
    const-string/jumbo v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1574
    if-nez v0, :cond_e

    .line 1615
    :goto_d
    return-void

    .line 1580
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_17

    .line 1582
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->n:Ljava/lang/String;

    .line 1584
    :cond_17
    const/4 v0, 0x2

    .line 1585
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_24

    .line 1587
    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->m:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1590
    :cond_24
    const-string/jumbo v0, "fillColor"

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    .line 1592
    const-string/jumbo v0, "fillAlpha"

    const/16 v1, 0xc

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    .line 1594
    const-string/jumbo v0, "strokeLineCap"

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1596
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    .line 1597
    const-string/jumbo v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1599
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    .line 1600
    const-string/jumbo v0, "strokeMiterLimit"

    const/16 v1, 0xa

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    .line 1603
    const-string/jumbo v0, "strokeColor"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    .line 1605
    const-string/jumbo v0, "strokeAlpha"

    const/16 v1, 0xb

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    .line 1607
    const-string/jumbo v0, "strokeWidth"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    .line 1609
    const-string/jumbo v0, "trimPathEnd"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    .line 1611
    const-string/jumbo v0, "trimPathOffset"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    .line 1613
    const-string/jumbo v0, "trimPathStart"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    goto/16 :goto_d
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1555
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1557
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1558
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1559
    return-void
.end method
