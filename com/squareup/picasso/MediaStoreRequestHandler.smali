.class Lcom/squareup/picasso/MediaStoreRequestHandler;
.super Lcom/squareup/picasso/ContentStreamRequestHandler;
.source "MediaStoreRequestHandler.java"


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 105
    .line 107
    :try_start_2
    sget-object v2, Lcom/squareup/picasso/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_c} :catch_27
    .catchall {:try_start_2 .. :try_end_c} :catchall_30

    move-result-object v1

    .line 108
    if-eqz v1, :cond_15

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_3a
    .catchall {:try_start_f .. :try_end_12} :catchall_38

    move-result v0

    if-nez v0, :cond_1c

    .line 116
    :cond_15
    if-eqz v1, :cond_1a

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a
    move v0, v6

    :cond_1b
    :goto_1b
    return v0

    .line 111
    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_3a
    .catchall {:try_start_1d .. :try_end_20} :catchall_38

    move-result v0

    .line 116
    if-eqz v1, :cond_1b

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 112
    :catch_27
    move-exception v0

    move-object v0, v7

    .line 116
    :goto_29
    if-eqz v0, :cond_2e

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2e
    move v0, v6

    goto :goto_1b

    .line 116
    :catchall_30
    move-exception v0

    move-object v1, v7

    :goto_32
    if-eqz v1, :cond_37

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0

    .line 116
    :catchall_38
    move-exception v0

    goto :goto_32

    .line 112
    :catch_3a
    move-exception v0

    move-object v0, v1

    goto :goto_29
.end method

.method static a(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;
    .registers 3

    .prologue
    .line 96
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->e:I

    if-gt p0, v0, :cond_f

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->f:I

    if-gt p1, v0, :cond_f

    .line 97
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    .line 101
    :goto_e
    return-object v0

    .line 98
    :cond_f
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->e:I

    if-gt p0, v0, :cond_1e

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    iget v0, v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->f:I

    if-gt p1, v0, :cond_1e

    .line 99
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    goto :goto_e

    .line 101
    :cond_1e
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .registers 15

    .prologue
    .line 55
    iget-object v0, p0, Lcom/squareup/picasso/MediaStoreRequestHandler;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 56
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-static {v7, v0}, Lcom/squareup/picasso/MediaStoreRequestHandler;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v8

    .line 58
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_40

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    move v6, v0

    .line 61
    :goto_1f
    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->d()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 62
    iget v0, p1, Lcom/squareup/picasso/Request;->h:I

    iget v1, p1, Lcom/squareup/picasso/Request;->i:I

    invoke-static {v0, v1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->a(II)Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    move-result-object v9

    .line 63
    if-nez v6, :cond_43

    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v9, v0, :cond_43

    .line 64
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->b(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 92
    :goto_3f
    return-object v0

    .line 59
    :cond_40
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1f

    .line 67
    :cond_43
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 69
    invoke-static {p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->c(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    iget v0, p1, Lcom/squareup/picasso/Request;->h:I

    iget v1, p1, Lcom/squareup/picasso/Request;->i:I

    iget v2, v9, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->e:I

    iget v3, v9, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->f:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/MediaStoreRequestHandler;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 77
    if-eqz v6, :cond_76

    .line 80
    sget-object v0, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;

    if-ne v9, v0, :cond_73

    const/4 v0, 0x1

    .line 81
    :goto_63
    invoke-static {v7, v10, v11, v0, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 87
    :goto_68
    if-eqz v1, :cond_7e

    .line 88
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    const/4 v2, 0x0

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    goto :goto_3f

    .line 80
    :cond_73
    iget v0, v9, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->d:I

    goto :goto_63

    .line 83
    :cond_76
    iget v0, v9, Lcom/squareup/picasso/MediaStoreRequestHandler$PicassoKind;->d:I

    .line 84
    invoke-static {v7, v10, v11, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_68

    .line 92
    :cond_7e
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/MediaStoreRequestHandler;->b(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    goto :goto_3f
.end method

.method public a(Lcom/squareup/picasso/Request;)Z
    .registers 5

    .prologue
    .line 49
    iget-object v0, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    .line 50
    const-string/jumbo v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "media"

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
