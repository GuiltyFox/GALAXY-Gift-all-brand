.class Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 7

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v0, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e:B

    packed-switch v0, :pswitch_data_d4

    .line 190
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 192
    :goto_a
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->c(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V

    .line 197
    :goto_f
    return-void

    .line 149
    :pswitch_10
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_a

    .line 194
    :catch_22
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(Ljava/lang/Exception;)V

    goto :goto_f

    .line 153
    :pswitch_2d
    :try_start_2d
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto :goto_a

    .line 157
    :pswitch_3f
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->c(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto :goto_a

    .line 161
    :pswitch_51
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto :goto_a

    .line 165
    :pswitch_63
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto :goto_a

    .line 169
    :pswitch_75
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto :goto_a

    .line 173
    :pswitch_87
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto/16 :goto_a

    .line 177
    :pswitch_9a
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto/16 :goto_a

    .line 181
    :pswitch_ad
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->i(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    goto/16 :goto_a

    .line 185
    :pswitch_c0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->j(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_d1} :catch_22

    goto/16 :goto_a

    .line 147
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_2d
        :pswitch_3f
        :pswitch_51
        :pswitch_63
        :pswitch_75
        :pswitch_87
        :pswitch_9a
        :pswitch_ad
        :pswitch_c0
    .end packed-switch
.end method
