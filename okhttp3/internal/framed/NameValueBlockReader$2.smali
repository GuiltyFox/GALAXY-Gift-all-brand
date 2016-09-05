.class Lokhttp3/internal/framed/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/NameValueBlockReader;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lokhttp3/internal/framed/NameValueBlockReader$2;->a:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 68
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lokhttp3/internal/framed/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 69
    sget-object v0, Lokhttp3/internal/framed/Spdy3;->a:[B

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/NameValueBlockReader$2;->setDictionary([B)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 72
    :cond_15
    return v0
.end method
