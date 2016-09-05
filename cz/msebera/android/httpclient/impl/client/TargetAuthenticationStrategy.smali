.class public Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;
.super Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;
.source "TargetAuthenticationStrategy.java"


# static fields
.field public static final b:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->b:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    const/16 v0, 0x191

    const-string/jumbo v1, "WWW-Authenticate"

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;-><init>(ILjava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method a(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;
    .registers 6

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 4

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public bridge synthetic a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 5

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;
    .registers 5

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 4

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->b(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method
