.class Lcom/squareup/picasso/FileRequestHandler;
.super Lcom/squareup/picasso/ContentStreamRequestHandler;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static a(Landroid/net/Uri;)I
    .registers 4

    .prologue
    .line 46
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    packed-switch v0, :pswitch_data_20

    .line 56
    :pswitch_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 50
    :pswitch_16
    const/16 v0, 0x5a

    goto :goto_15

    .line 52
    :pswitch_19
    const/16 v0, 0xb4

    goto :goto_15

    .line 54
    :pswitch_1c
    const/16 v0, 0x10e

    goto :goto_15

    .line 48
    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_19
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .registers 8

    .prologue
    .line 42
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/FileRequestHandler;->b(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object v4, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-static {v4}, Lcom/squareup/picasso/FileRequestHandler;->a(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method

.method public a(Lcom/squareup/picasso/Request;)Z
    .registers 4

    .prologue
    .line 38
    const-string/jumbo v0, "file"

    iget-object v1, p1, Lcom/squareup/picasso/Request;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
