.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x0

.field private static BIG_PIXELS:I = 0x0

.field private static BIG_TPIXELS:I = 0x0

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I

.field private static SMALL_PIXELS:I

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 65
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 66
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 67
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 68
    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 69
    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 453
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 458
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 89
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 97
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 936
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 938
    .local v0, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-nez v0, :cond_27

    .line 940
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 942
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 943
    .restart local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    :goto_1f
    return-void

    .line 947
    :cond_20
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 952
    :cond_27
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;)V
    .registers 24
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "progress"    # Ljava/lang/Object;
    .param p5, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p6, "options"    # Lcom/androidquery/callback/ImageOptions;

    .prologue
    .line 854
    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static/range {v1 .. v16}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;II)V

    .line 856
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;II)V
    .registers 27
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "memCache"    # Z
    .param p5, "fileCache"    # Z
    .param p6, "targetWidth"    # I
    .param p7, "fallbackId"    # I
    .param p8, "preset"    # Landroid/graphics/Bitmap;
    .param p9, "animation"    # I
    .param p10, "ratio"    # F
    .param p11, "anchor"    # F
    .param p12, "progress"    # Ljava/lang/Object;
    .param p13, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p14, "policy"    # I
    .param p15, "round"    # I

    .prologue
    .line 869
    const/4 v3, 0x0

    .line 871
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_b

    .line 872
    move/from16 v0, p6

    move/from16 v1, p15

    invoke-static {p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 875
    :cond_b
    if-eqz v3, :cond_29

    .line 876
    const v2, 0x40ff0001

    invoke-virtual {p2, v2, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 877
    const/4 v2, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 878
    const/4 v9, 0x4

    move-object v2, p2

    move-object/from16 v4, p8

    move/from16 v5, p7

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {v2 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    .line 889
    :goto_28
    return-void

    .line 880
    :cond_29
    new-instance v10, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v10}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 881
    .local v10, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-virtual {v10, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 882
    if-eqz p0, :cond_8d

    .line 883
    invoke-virtual {v10, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_28

    .line 885
    :cond_8d
    invoke-virtual {v10, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_28
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 357
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 8
    .param p1, "cb"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/widget/ImageView;
    .param p4, "bm"    # Landroid/graphics/Bitmap;
    .param p5, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v1, 0x0

    .line 489
    if-eqz p3, :cond_5

    if-nez p1, :cond_6

    .line 502
    :cond_5
    :goto_5
    return-void

    .line 491
    :cond_6
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 493
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    .line 494
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 501
    :cond_1a
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    goto :goto_5

    .line 496
    :cond_1e
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1a
.end method

.method public static clearCache()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 579
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 580
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 581
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 582
    return-void
.end method

.method protected static clearTasks()V
    .registers 1

    .prologue
    .line 585
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 586
    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 234
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_15

    .line 236
    invoke-static {p0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    :cond_7
    :goto_7
    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_14

    .line 247
    const-string v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    :cond_14
    return-object v0

    .line 238
    :cond_15
    if-eqz p1, :cond_7

    .line 242
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x1

    .line 255
    const/4 v4, 0x0

    .line 257
    .local v4, "result":Landroid/graphics/Bitmap;
    if-nez p1, :cond_9

    .line 258
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 261
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 262
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 266
    const/4 v2, 0x0

    .line 270
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_21
    .catchall {:try_start_e .. :try_end_13} :catchall_29

    .line 272
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 277
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    invoke-static {v1, v5, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_31
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2e

    move-result-object v4

    .line 283
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 286
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_20
    return-object v4

    .line 280
    :catch_21
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    :goto_22
    :try_start_22
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 283
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_20

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v5

    .line 283
    :goto_2a
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 284
    throw v5

    .line 282
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2e
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a

    .line 280
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_31
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_22
.end method

.method private static fadeIn(II)Z
    .registers 4
    .param p0, "animation"    # I
    .param p1, "source"    # I

    .prologue
    const/4 v0, 0x1

    .line 831
    packed-switch p0, :pswitch_data_c

    .line 839
    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_5
    :pswitch_5
    return v0

    .line 835
    :pswitch_6
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    .line 837
    :pswitch_9
    if-ne p1, v0, :cond_4

    goto :goto_5

    .line 831
    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "iv"    # Landroid/view/View;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fallback"    # I

    .prologue
    const/4 v1, 0x1

    .line 723
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_14

    .line 724
    const/4 p1, 0x0

    .line 727
    :cond_14
    if-eqz p1, :cond_1b

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_1a
    :goto_1a
    return-object p1

    .line 729
    :cond_1b
    const/4 v0, -0x2

    if-ne p2, v0, :cond_24

    .line 730
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 731
    :cond_24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 732
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a
.end method

.method private static getBCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 590
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 592
    :cond_15
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 455
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 419
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_26

    .line 421
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    if-nez v0, :cond_26

    .line 425
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_26

    .line 428
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 433
    .end local v1    # "key":Ljava/lang/String;
    :cond_26
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 605
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 607
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 669
    if-lez p1, :cond_19

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 673
    :cond_19
    if-lez p2, :cond_32

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 677
    :cond_32
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v3, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_18

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_18

    .line 446
    invoke-static {v1, v3, v3, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 450
    :cond_18
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "target"    # I
    .param p3, "width"    # Z
    .param p4, "round"    # I

    .prologue
    .line 303
    const/4 v4, 0x0

    .line 305
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    if-lez p2, :cond_23

    .line 307
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 308
    .local v3, "info":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    invoke-static {p0, p1, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 312
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 313
    .local v1, "dim":I
    if-nez p3, :cond_18

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    :cond_18
    invoke-static {v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result v5

    .line 316
    .local v5, "ssize":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 321
    .end local v1    # "dim":I
    .end local v3    # "info":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "ssize":I
    :cond_23
    const/4 v0, 0x0

    .line 323
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_24
    invoke-static {p0, p1, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_27} :catch_2f

    move-result-object v0

    .line 329
    :goto_28
    if-lez p4, :cond_2e

    .line 330
    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    :cond_2e
    return-object v0

    .line 324
    :catch_2f
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 326
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 960
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 961
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 963
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 964
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 965
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 966
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 967
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 969
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 970
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 971
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 972
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 974
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 975
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 977
    return-object v2
.end method

.method private static getSCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 598
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 600
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # F
    .param p3, "anchor"    # F

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 780
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_14

    .line 781
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 786
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_13
    return-object v0

    .line 783
    :cond_14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_13
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 640
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 642
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    .line 643
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 645
    .local v1, "result":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1a

    .line 646
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 647
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 650
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1a
    if-nez v1, :cond_34

    .line 651
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 652
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 654
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_34

    .line 656
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_34

    .line 657
    const/4 v2, 0x0

    sput-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 658
    const/4 v1, 0x0

    .line 664
    :cond_34
    return-object v1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "invalid"    # Z

    .prologue
    .line 682
    if-nez p3, :cond_3

    .line 712
    :cond_2
    :goto_2
    return-void

    .line 684
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v2, v3, v4

    .line 686
    .local v2, "pixels":I
    const/4 v0, 0x0

    .line 688
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p4, :cond_2a

    .line 689
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 696
    :goto_14
    if-gtz p1, :cond_18

    if-lez p2, :cond_38

    .line 698
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 703
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 690
    .end local v1    # "key":Ljava/lang/String;
    :cond_2a
    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v2, v3, :cond_33

    .line 691
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    .line 693
    :cond_33
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    .line 707
    :cond_38
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 743
    :cond_12
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 746
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 753
    :cond_28
    :goto_28
    return-void

    .line 749
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_28
.end method

.method private static sampleSize(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "target"    # I

    .prologue
    .line 340
    const/4 v1, 0x1

    .line 342
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0xa

    if-lt v0, v2, :cond_7

    .line 353
    :cond_6
    return v1

    .line 344
    :cond_7
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_6

    .line 348
    div-int/lit8 p0, p0, 0x2

    .line 349
    mul-int/lit8 v1, v1, 0x2

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "isPreset"    # Z

    .prologue
    .line 760
    if-nez p3, :cond_7

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    :cond_6
    :goto_6
    return-void

    .line 765
    :cond_7
    if-eqz p4, :cond_15

    .line 766
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    invoke-static {p2, p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 770
    :cond_15
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_6

    .line 771
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto :goto_6
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .registers 16
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "preset"    # Landroid/graphics/Bitmap;
    .param p3, "fallback"    # I
    .param p4, "animation"    # I
    .param p5, "ratio"    # F
    .param p6, "anchor"    # F
    .param p7, "source"    # I

    .prologue
    .line 792
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 793
    if-nez p1, :cond_b

    .line 794
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 827
    :goto_a
    return-void

    .line 798
    :cond_b
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 799
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 801
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 802
    if-nez p2, :cond_3d

    .line 803
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 804
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 805
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 819
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    if-eqz v0, :cond_65

    .line 822
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 823
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 808
    :cond_3d
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 809
    .local v3, "pd":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    .line 810
    .local v2, "ds":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 811
    .local v4, "td":Landroid/graphics/drawable/TransitionDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 812
    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 813
    move-object v1, v4

    goto :goto_2d

    .line 815
    .end local v2    # "ds":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "pd":Landroid/graphics/drawable/Drawable;
    .end local v4    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_5a
    if-lez p4, :cond_2d

    .line 816
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2d

    .line 825
    :cond_65
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

.method public static setCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 525
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 526
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 527
    return-void
.end method

.method public static setDelayWrite(Z)V
    .registers 1
    .param p0, "delay"    # Z

    .prologue
    .line 538
    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 539
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 515
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 516
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 517
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 571
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 572
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 573
    return-void
.end method

.method public static setPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 549
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 550
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 551
    return-void
.end method

.method public static setSmallPixel(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 561
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 562
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 563
    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 365
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 368
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "anchor"    # F

    .prologue
    .line 208
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 210
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "animation"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 178
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 900
    .local v2, "v":Landroid/widget/ImageView;
    if-nez v1, :cond_17

    .line 901
    invoke-virtual {p0, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 902
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 926
    :goto_16
    return-void

    .line 906
    :cond_17
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 907
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 908
    const v3, 0x40ff0001

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 909
    new-instance v3, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v3}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 910
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_16

    .line 915
    :cond_39
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 917
    sget-object v3, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 918
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 919
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_16

    .line 921
    :cond_4f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 922
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_16
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 156
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 466
    .local v3, "firstView":Landroid/widget/ImageView;
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/WeakHashMap;

    .line 469
    .local v10, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-eqz v10, :cond_18

    invoke-virtual {v10, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 470
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 473
    :cond_20
    if-eqz v10, :cond_30

    .line 475
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 477
    .local v11, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    .line 485
    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_30
    return-void

    .line 477
    .restart local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 478
    .local v7, "view":Landroid/widget/ImageView;
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 479
    .local v5, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    iput-object p3, v5, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 480
    invoke-direct/range {v4 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_2a
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 506
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 167
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 133
    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 374
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 110
    return-object p0
.end method

.method protected isStreamingContent()Z
    .registers 2

    .prologue
    .line 930
    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 614
    :goto_6
    return-object v0

    .line 613
    :cond_7
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    .line 614
    :cond_d
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 717
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 718
    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "preset"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 145
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 188
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 189
    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "radius"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    .line 225
    return-object p0
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "targetWidth"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 121
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v1

    .line 385
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_b

    .line 386
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 390
    :cond_b
    invoke-direct {p0, v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_24

    .line 394
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez v3, :cond_25

    .line 395
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :cond_19
    :goto_19
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_24

    .line 403
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    .line 408
    :cond_24
    return-object v0

    .line 396
    :cond_25
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2f

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    .line 397
    :cond_2f
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    goto :goto_19

    .line 398
    :cond_32
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_19

    .line 399
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    goto :goto_19
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
