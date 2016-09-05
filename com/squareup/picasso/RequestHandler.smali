.class public abstract Lcom/squareup/picasso/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V
    .registers 10

    .prologue
    .line 157
    const/4 v0, 0x1

    .line 158
    if-gt p3, p1, :cond_5

    if-le p2, p0, :cond_10

    .line 161
    :cond_5
    if-nez p1, :cond_16

    .line 162
    int-to-float v0, p2

    int-to-float v1, p0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 173
    :cond_10
    :goto_10
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    return-void

    .line 163
    :cond_16
    if-nez p0, :cond_22

    .line 164
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_10

    .line 166
    :cond_22
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 167
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 168
    iget-boolean v2, p5, Lcom/squareup/picasso/Request;->k:Z

    if-eqz v2, :cond_3d

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_10

    .line 170
    :cond_3d
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_10
.end method

.method static a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V
    .registers 10

    .prologue
    .line 151
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/RequestHandler;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 153
    return-void
.end method

.method static a(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 2

    .prologue
    .line 146
    if-eqz p0, :cond_8

    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static c(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->d()Z

    move-result v2

    .line 133
    iget-object v0, p0, Lcom/squareup/picasso/Request;->q:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    move v1, v0

    .line 134
    :goto_a
    const/4 v0, 0x0

    .line 135
    if-nez v2, :cond_f

    if-eqz v1, :cond_1c

    .line 136
    :cond_f
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    if-eqz v1, :cond_1c

    .line 139
    iget-object v1, p0, Lcom/squareup/picasso/Request;->q:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    :cond_1c
    return-object v0

    .line 133
    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
.end method

.method public abstract a(Lcom/squareup/picasso/Request;)Z
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
