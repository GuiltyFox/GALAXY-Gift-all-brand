.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation


# instance fields
.field d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field j:Z

.field final synthetic k:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->o()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->h:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->g:Z

    if-eqz v0, :cond_1b

    .line 191
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->g()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 198
    :cond_1b
    :goto_1b
    return-void

    .line 195
    :cond_1c
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    goto :goto_1b
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->g()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->j:Z

    if-nez v1, :cond_2e

    const-string/jumbo v1, "100-continue"

    const-string/jumbo v2, "Expect"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->j()V

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->m:Lcom/koushikdutta/async/AsyncSocket;

    const-string/jumbo v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 164
    :cond_2d
    :goto_2d
    return-void

    .line 111
    :cond_2e
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->b()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->e:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->e:Ljava/lang/String;

    const-string/jumbo v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->f:Ljava/lang/String;

    .line 115
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->p:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->d:Ljava/util/Hashtable;

    monitor-enter v1

    .line 117
    :try_start_56
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->d:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 118
    if-eqz v0, :cond_8a

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;

    .line 120
    iget-object v3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->a:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 122
    iput-object v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->n:Ljava/util/regex/Matcher;

    .line 123
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;->b:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 128
    :cond_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_56 .. :try_end_8b} :catchall_b2

    .line 129
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    if-nez v1, :cond_b5

    if-nez v0, :cond_b5

    .line 153
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a()V

    goto/16 :goto_2d

    .line 128
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 158
    :cond_b5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->b()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 159
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto/16 :goto_2d

    .line 161
    :cond_cc
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->h:Z

    if-eqz v0, :cond_2d

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto/16 :goto_2d
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    .line 187
    :cond_a
    :goto_a
    return-void

    .line 171
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->h:Z

    .line 172
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->a(Ljava/lang/Exception;)V

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->m:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 182
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->o()V

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->l:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->i:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    goto :goto_a
.end method
