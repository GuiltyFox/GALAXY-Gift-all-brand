.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a([B)V
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
    .line 68
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 68
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a([B)V

    return-void
.end method

.method public a([B)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    :cond_11
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/PushParser;->a(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 82
    return-void
.end method
