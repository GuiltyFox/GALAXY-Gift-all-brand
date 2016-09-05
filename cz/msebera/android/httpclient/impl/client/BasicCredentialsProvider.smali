.class public Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/CredentialsProvider;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            "Lcz/msebera/android/httpclient/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method private static a(Ljava/util/Map;Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            "Lcz/msebera/android/httpclient/auth/Credentials;",
            ">;",
            "Lcz/msebera/android/httpclient/auth/AuthScope;",
            ")",
            "Lcz/msebera/android/httpclient/auth/Credentials;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/Credentials;

    .line 76
    if-nez v0, :cond_30

    .line 79
    const/4 v4, -0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 82
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;->a(Lcz/msebera/android/httpclient/auth/AuthScope;)I

    move-result v3

    .line 83
    if-le v3, v4, :cond_31

    move v2, v3

    :goto_25
    move v4, v2

    move-object v2, v1

    .line 87
    goto :goto_12

    .line 88
    :cond_28
    if-eqz v2, :cond_30

    .line 89
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/Credentials;

    .line 92
    :cond_30
    return-object v0

    :cond_31
    move-object v1, v2

    move v2, v4

    goto :goto_25
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;
    .registers 3

    .prologue
    .line 96
    const-string/jumbo v0, "Authentication scope"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a(Ljava/util/Map;Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 102
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 4

    .prologue
    .line 59
    const-string/jumbo v0, "Authentication scope"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
