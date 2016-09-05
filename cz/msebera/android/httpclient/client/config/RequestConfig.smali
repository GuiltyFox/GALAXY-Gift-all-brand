.class public Lcz/msebera/android/httpclient/client/config/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/client/config/RequestConfig;


# instance fields
.field private final b:Z

.field private final c:Lcz/msebera/android/httpclient/HttpHost;

.field private final d:Ljava/net/InetAddress;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:Z

.field private final l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->a:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-void
.end method

.method constructor <init>(ZLcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;III)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Ljava/net/InetAddress;",
            "Z",
            "Ljava/lang/String;",
            "ZZZIZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->b:Z

    .line 73
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->c:Lcz/msebera/android/httpclient/HttpHost;

    .line 74
    iput-object p3, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->d:Ljava/net/InetAddress;

    .line 75
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->e:Z

    .line 76
    iput-object p5, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->f:Ljava/lang/String;

    .line 77
    iput-boolean p6, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->g:Z

    .line 78
    iput-boolean p7, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->h:Z

    .line 79
    iput-boolean p8, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->i:Z

    .line 80
    iput p9, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->j:I

    .line 81
    iput-boolean p10, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->k:Z

    .line 82
    iput-object p11, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->l:Ljava/util/Collection;

    .line 83
    iput-object p12, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->m:Ljava/util/Collection;

    .line 84
    iput p13, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->n:I

    .line 85
    iput p14, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->o:I

    .line 86
    iput p15, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->p:I

    .line 87
    return-void
.end method

.method public static g()Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 1

    .prologue
    .line 294
    new-instance v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->h:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->i:Z

    return v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->f()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->l:Ljava/util/Collection;

    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->m:Ljava/util/Collection;

    return-object v0
.end method

.method protected f()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string/jumbo v1, ", expectContinueEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->c:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, ", localAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->d:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, ", staleConnectionCheckEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, ", cookieSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v1, ", redirectsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v1, ", relativeRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v1, ", circularRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v1, ", authenticationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v1, ", targetPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->l:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string/jumbo v1, ", proxyPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->m:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    const-string/jumbo v1, ", connectionRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    const-string/jumbo v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
