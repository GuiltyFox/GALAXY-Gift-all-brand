.class final Lcom/squareup/picasso/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/squareup/picasso/Utils;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method static a(Landroid/content/res/Resources;Lcom/squareup/picasso/Request;)I
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    iget v0, p1, Lcom/squareup/picasso/Request;->e:I

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    if-nez v0, :cond_d

    .line 334
    :cond_a
    iget v0, p1, Lcom/squareup/picasso/Request;->e:I

    .line 358
    :goto_c
    return v0

    .line 337
    :cond_d
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 338
    if-nez v2, :cond_31

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No package provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_31
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_3f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 343
    :cond_3f
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_5b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_8a

    .line 346
    const/4 v0, 0x0

    :try_start_62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6d

    move-result v0

    goto :goto_c

    .line 347
    :catch_6d
    move-exception v0

    .line 348
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Last path segment is not a resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_8a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a3

    .line 351
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_c

    .line 356
    :cond_a3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "More than two path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/graphics/Bitmap;)I
    .registers 4

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_26

    .line 111
    invoke-static {p0}, Lcom/squareup/picasso/Utils$BitmapHoneycombMR1;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 115
    :goto_a
    if-gez v0, :cond_30

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a

    .line 118
    :cond_30
    return v0
.end method

.method static a(Ljava/io/File;)J
    .registers 7

    .prologue
    const-wide/32 v2, 0x500000

    .line 266
    .line 269
    :try_start_3
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 272
    const-wide/16 v4, 0x32

    div-long/2addr v0, v4
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1a} :catch_26

    .line 277
    :goto_1a
    const-wide/32 v4, 0x3200000

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 273
    :catch_26
    move-exception v0

    move-wide v0, v2

    goto :goto_1a
.end method

.method static a(Landroid/content/Context;Lcom/squareup/picasso/Request;)Landroid/content/res/Resources;
    .registers 5

    .prologue
    .line 362
    iget v0, p1, Lcom/squareup/picasso/Request;->e:I

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    if-nez v0, :cond_d

    .line 363
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 370
    :goto_c
    return-object v0

    .line 366
    :cond_d
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 367
    if-nez v0, :cond_31

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No package provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 370
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_c

    .line 371
    :catch_3a
    move-exception v0

    .line 372
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to obtain resources for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;
    .registers 2

    .prologue
    .line 249
    :try_start_0
    const-string/jumbo v0, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 250
    invoke-static {p0}, Lcom/squareup/picasso/Utils$OkHttpLoaderCreator;->a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 253
    :goto_a
    return-object v0

    .line 251
    :catch_b
    move-exception v0

    .line 253
    new-instance v0, Lcom/squareup/picasso/UrlConnectionDownloader;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/UrlConnectionDownloader;-><init>(Landroid/content/Context;)V

    goto :goto_a
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_8

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_8
    return-object p0
.end method

.method static a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->i()Lcom/squareup/picasso/Action;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_14

    .line 152
    iget-object v0, v3, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_14
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->k()Ljava/util/List;

    move-result-object v4

    .line 155
    if-eqz v4, :cond_3f

    .line 156
    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    :goto_20
    if-ge v1, v5, :cond_3f

    .line 157
    if-gtz v1, :cond_26

    if-eqz v3, :cond_2c

    :cond_26
    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_2c
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    iget-object v0, v0, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 161
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/squareup/picasso/Request;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 173
    sget-object v0, Lcom/squareup/picasso/Utils;->a:Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/squareup/picasso/Utils;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    return-object v0
.end method

.method static a(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v2, 0x78

    const/16 v3, 0xa

    .line 179
    iget-object v0, p0, Lcom/squareup/picasso/Request;->f:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/Request;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 181
    iget-object v0, p0, Lcom/squareup/picasso/Request;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_18
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    iget v0, p0, Lcom/squareup/picasso/Request;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4a

    .line 193
    const-string/jumbo v0, "rotation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->p:Z

    if-eqz v0, :cond_47

    .line 195
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    :cond_47
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_4a
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->d()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 200
    const-string/jumbo v0, "resize:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_69
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->j:Z

    if-eqz v0, :cond_bf

    .line 204
    const-string/jumbo v0, "centerCrop"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/squareup/picasso/Request;->g:Ljava/util/List;

    if-eqz v0, :cond_ce

    .line 211
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/picasso/Request;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_83
    if-ge v1, v2, :cond_ce

    .line 212
    iget-object v0, p0, Lcom/squareup/picasso/Request;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_83

    .line 182
    :cond_9b
    iget-object v0, p0, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    if-eqz v0, :cond_b3

    .line 183
    iget-object v0, p0, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 187
    :cond_b3
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 188
    iget v0, p0, Lcom/squareup/picasso/Request;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 205
    :cond_bf
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->k:Z

    if-eqz v0, :cond_77

    .line 206
    const-string/jumbo v0, "centerInside"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 217
    :cond_ce
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .registers 2

    .prologue
    .line 135
    invoke-static {}, Lcom/squareup/picasso/Utils;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Method call should happen from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_f
    return-void
.end method

.method static a(Landroid/os/Looper;)V
    .registers 5

    .prologue
    .line 382
    new-instance v0, Lcom/squareup/picasso/Utils$1;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Utils$1;-><init>(Landroid/os/Looper;)V

    .line 387
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 388
    return-void
.end method

.method static a(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 221
    if-nez p0, :cond_3

    .line 226
    :goto_2
    return-void

    .line 223
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 224
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 169
    const-string/jumbo v0, "Picasso"

    const-string/jumbo v1, "%1$-11s %2$-12s %3$s %4$s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-nez p0, :cond_5

    .line 243
    :cond_4
    :goto_4
    return v1

    .line 233
    :cond_5
    const-string/jumbo v2, " "

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "CACHE"

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v1, v0

    .line 235
    goto :goto_4

    .line 237
    :cond_1a
    array-length v3, v2

    if-eq v3, v0, :cond_4

    .line 241
    :try_start_1d
    const-string/jumbo v3, "CONDITIONAL_CACHE"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2f} :catch_38

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_36

    :goto_34
    move v1, v0

    goto :goto_4

    :cond_36
    move v0, v1

    goto :goto_34

    .line 242
    :catch_38
    move-exception v0

    goto :goto_4
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "picasso-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 262
    :cond_19
    return-object v0
.end method

.method static b()Z
    .registers 2

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static b(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    .line 312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 315
    :goto_9
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 316
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 318
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)I
    .registers 6

    .prologue
    const/high16 v4, 0x100000

    .line 281
    const-string/jumbo v0, "activity"

    invoke-static {p0, v0}, Lcom/squareup/picasso/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    .line 283
    :goto_15
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 284
    if-eqz v1, :cond_2b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2b

    .line 285
    invoke-static {v0}, Lcom/squareup/picasso/Utils$ActivityManagerHoneycomb;->a(Landroid/app/ActivityManager;)I

    move-result v0

    .line 288
    :goto_25
    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x7

    return v0

    .line 282
    :cond_29
    const/4 v1, 0x0

    goto :goto_15

    :cond_2b
    move v0, v2

    goto :goto_25
.end method

.method static c(Ljava/io/InputStream;)Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/16 v3, 0xc

    const/4 v0, 0x0

    .line 322
    new-array v1, v3, [B

    .line 324
    invoke-virtual {p0, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v3, :cond_31

    .line 326
    const-string/jumbo v2, "RIFF"

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v3, v1, v0, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "WEBP"

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x8

    const-string/jumbo v5, "US-ASCII"

    invoke-direct {v3, v1, v4, v6, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    .line 329
    :cond_31
    return v0
.end method

.method static d(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    :try_start_5
    const-string/jumbo v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_c} :catch_11

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 298
    :cond_10
    :goto_10
    return v0

    .line 295
    :catch_11
    move-exception v1

    goto :goto_10
.end method
