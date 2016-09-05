.class public Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
.super Ljava/lang/Object;
.source "HttpCoreContext.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 100
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 95
    return-void
.end method

.method public static b(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
    .registers 2

    .prologue
    .line 82
    const-string/jumbo v0, "HTTP context"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    instance-of v0, p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    if-eqz v0, :cond_d

    .line 84
    check-cast p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    .line 86
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object p0, v0

    goto :goto_c
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 115
    const-string/jumbo v0, "Attribute class"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    if-nez v0, :cond_e

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a:Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public l()Lcz/msebera/android/httpclient/HttpConnection;
    .registers 3

    .prologue
    .line 128
    const-string/jumbo v0, "http.connection"

    const-class v1, Lcz/msebera/android/httpclient/HttpConnection;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpConnection;

    return-object v0
.end method

.method public m()Lcz/msebera/android/httpclient/HttpRequest;
    .registers 3

    .prologue
    .line 132
    const-string/jumbo v0, "http.request"

    const-class v1, Lcz/msebera/android/httpclient/HttpRequest;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    return-object v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 136
    const-string/jumbo v0, "http.request_sent"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 137
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public o()Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .prologue
    .line 149
    const-string/jumbo v0, "http.target_host"

    const-class v1, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method
