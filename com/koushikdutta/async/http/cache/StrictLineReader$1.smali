.class Lcom/koushikdutta/async/http/cache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/StrictLineReader;->a()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/cache/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/StrictLineReader;I)V
    .registers 3

    .prologue
    .line 172
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->a:Lcom/koushikdutta/async/http/cache/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 175
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->buf:[B

    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1d

    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 176
    :goto_14
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 175
    :cond_1d
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    goto :goto_14
.end method
