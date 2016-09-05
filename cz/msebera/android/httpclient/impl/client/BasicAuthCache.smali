.class public Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;
.super Ljava/lang/Object;
.source "BasicAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/AuthCache;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/auth/AuthScheme;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcz/msebera/android/httpclient/conn/SchemePortResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->a:Ljava/util/HashMap;

    .line 59
    if-eqz p1, :cond_f

    :goto_c
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->b:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 61
    return-void

    .line 59
    :cond_f
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->a:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    goto :goto_c
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 4

    .prologue
    .line 87
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->c(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .registers 5

    .prologue
    .line 82
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->c(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public b(Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 4

    .prologue
    .line 92
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->c(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method protected c(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 6

    .prologue
    .line 68
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->b()I

    move-result v0

    if-gtz v0, :cond_1a

    .line 71
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->b:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->a(Lcz/msebera/android/httpclient/HttpHost;)I
    :try_end_b
    .catch Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException; {:try_start_6 .. :try_end_b} :catch_1b

    move-result v1

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    .line 77
    :cond_1a
    :goto_1a
    return-object p1

    .line 72
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
