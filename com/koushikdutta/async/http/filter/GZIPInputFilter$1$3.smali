.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 119
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a([B)V

    return-void
.end method

.method public a([B)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    if-eq v1, v0, :cond_25

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->b(Ljava/lang/Exception;)V

    .line 130
    :goto_24
    return-void

    .line 126
    :cond_25
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-boolean v4, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->d:Z

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_24
.end method
