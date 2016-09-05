.class public final Lcom/bumptech/glide/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/Util;->a:[C

    .line 22
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->b:[C

    .line 24
    const/16 v0, 0x28

    new-array v0, v0, [C

    sput-object v0, Lcom/bumptech/glide/util/Util;->c:[C

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)I
    .registers 5

    .prologue
    .line 94
    mul-int v0, p0, p1

    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap$Config;)I
    .registers 3

    .prologue
    .line 99
    if-nez p0, :cond_4

    .line 100
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 104
    :cond_4
    sget-object v0, Lcom/bumptech/glide/util/Util$1;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 114
    const/4 v0, 0x4

    .line 116
    :goto_10
    return v0

    .line 106
    :pswitch_11
    const/4 v0, 0x1

    .line 107
    goto :goto_10

    .line 110
    :pswitch_13
    const/4 v0, 0x2

    .line 111
    goto :goto_10

    .line 104
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    .line 81
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v0

    .line 86
    :goto_a
    return v0

    .line 82
    :catch_b
    move-exception v0

    .line 86
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    sget-object v1, Lcom/bumptech/glide/util/Util;->b:[C

    monitor-enter v1

    .line 35
    :try_start_3
    sget-object v0, Lcom/bumptech/glide/util/Util;->b:[C

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/Util;->a([B[C)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private static a([B[C)Ljava/lang/String;
    .registers 7

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_21

    .line 53
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 54
    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/bumptech/glide/util/Util;->a:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 55
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/bumptech/glide/util/Util;->a:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 182
    :cond_1b
    return-object v0
.end method

.method public static a(I)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 134
    invoke-static {}, Lcom/bumptech/glide/util/Util;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_f
    return-void
.end method

.method public static a(II)Z
    .registers 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static b(I)Z
    .registers 2

    .prologue
    .line 127
    if-gtz p0, :cond_6

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c()Z
    .registers 1

    .prologue
    .line 159
    invoke-static {}, Lcom/bumptech/glide/util/Util;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
