.class public Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->b:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 61
    const-string/jumbo v0, "Id"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    if-nez v0, :cond_18

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_18

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    :cond_18
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 70
    const-string/jumbo v0, "Id"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    if-eqz p2, :cond_e

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_d
    return-void

    .line 74
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
