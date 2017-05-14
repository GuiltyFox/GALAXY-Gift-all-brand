.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 8

    .prologue
    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v0, :cond_2e

    .line 95
    :goto_6
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v0

    if-lez v0, :cond_2e

    .line 96
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 98
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_6

    .line 101
    :cond_2e
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 103
    return-void
.end method
