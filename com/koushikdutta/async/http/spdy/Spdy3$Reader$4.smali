.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 7

    .prologue
    .line 207
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a:I

    const/high16 v1, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 210
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a:I

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 213
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3e

    .line 214
    :try_start_19
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version != 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_33

    .line 256
    :catch_33
    move-exception v0

    .line 257
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(Ljava/lang/Exception;)V

    .line 259
    :goto_3d
    return-void

    .line 217
    :cond_3e
    packed-switch v1, :pswitch_data_ba

    .line 251
    :pswitch_41
    :try_start_41
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 254
    :goto_44
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    goto :goto_3d

    .line 219
    :pswitch_4a
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 223
    :pswitch_58
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 227
    :pswitch_66
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 231
    :pswitch_74
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 235
    :pswitch_82
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 239
    :pswitch_90
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 243
    :pswitch_9e
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->g(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_44

    .line 247
    :pswitch_ac
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, p2, v1, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_b9} :catch_33

    goto :goto_44

    .line 217
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_58
        :pswitch_66
        :pswitch_74
        :pswitch_41
        :pswitch_82
        :pswitch_90
        :pswitch_9e
        :pswitch_ac
    .end packed-switch
.end method
