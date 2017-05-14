.class abstract Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
.implements Lcom/koushikdutta/async/http/AsyncHttpResponse;


# static fields
.field static final synthetic p:Z


# instance fields
.field private d:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private f:Lcom/koushikdutta/async/AsyncSocket;

.field private g:Z

.field protected j:Lcom/koushikdutta/async/http/Headers;

.field k:Z

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Lcom/koushikdutta/async/DataSink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 50
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->d:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->g:Z

    .line 101
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method private q()V
    .registers 3

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->g:Z

    if-nez v0, :cond_5

    .line 167
    :cond_4
    return-void

    .line 164
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->g:Z

    .line 165
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_21
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/http/Headers;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l:I

    .line 126
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    .line 179
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/http/Headers;

    .line 114
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "end called?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method a(Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 4

    .prologue
    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    if-nez v0, :cond_7

    .line 31
    :goto_6
    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->d:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_6
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->q()V

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 186
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 212
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 196
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 48
    return-void
.end method

.method public a_()Lcom/koushikdutta/async/http/Headers;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public b(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Lcom/koushikdutta/async/DataEmitter;)V

    .line 74
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/AsyncSocket;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->k:Z

    .line 95
    return-void
.end method

.method public b_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/koushikdutta/async/AsyncSocket;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public c_()Lcom/koushikdutta/async/DataSink;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l:I

    return v0
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->g()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->o:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->i()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->f:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->m()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_21

    const-string/jumbo v1, "charset"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 231
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public o()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method protected p()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_13

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->e:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 45
    :goto_12
    return-void

    .line 43
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_9

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->j:Lcom/koushikdutta/async/http/Headers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
