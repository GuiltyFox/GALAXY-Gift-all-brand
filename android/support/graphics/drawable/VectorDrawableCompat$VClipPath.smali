.class Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1434
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1436
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .registers 2

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1440
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .registers 3

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1459
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_9

    .line 1461
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->n:Ljava/lang/String;

    .line 1464
    :cond_9
    const/4 v0, 0x1

    .line 1465
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_16

    .line 1467
    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->a(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->m:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1469
    :cond_16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1444
    const-string/jumbo v0, "pathData"

    invoke-static {p4, v0}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1445
    if-nez v0, :cond_a

    .line 1452
    :goto_9
    return-void

    .line 1448
    :cond_a
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->d:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1450
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->a(Landroid/content/res/TypedArray;)V

    .line 1451
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1473
    const/4 v0, 0x1

    return v0
.end method
