.class public Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;


# instance fields
.field private final b:I

.field private final c:Z

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->a:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 122
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6

    .prologue
    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/InterruptedIOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/UnknownHostException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/ConnectException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/net/ssl/SSLException;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZLjava/util/Collection;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->b:I

    .line 82
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->c:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->d:Ljava/util/Set;

    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 85
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 87
    :cond_24
    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .prologue
    .line 186
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    .line 197
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    if-eqz v0, :cond_1a

    .line 198
    check-cast p1, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->c()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    .line 200
    :goto_a
    instance-of v1, v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v1, :cond_18

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    :cond_1a
    move-object v0, p1

    goto :goto_a
.end method

.method public retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    const-string/jumbo v0, "Exception parameter"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->b:I

    if-le p2, v0, :cond_14

    move v0, v1

    .line 164
    :goto_13
    return v0

    .line 137
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->d:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    .line 138
    goto :goto_13

    .line 140
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    .line 142
    goto :goto_13

    .line 146
    :cond_3c
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->m()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v3

    .line 149
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->b(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move v0, v1

    .line 150
    goto :goto_13

    .line 153
    :cond_4c
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->a(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_54

    move v0, v2

    .line 155
    goto :goto_13

    .line 158
    :cond_54
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->n()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->c:Z

    if-eqz v0, :cond_60

    :cond_5e
    move v0, v2

    .line 161
    goto :goto_13

    :cond_60
    move v0, v1

    .line 164
    goto :goto_13
.end method
