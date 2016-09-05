.class public final Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/conn/scheme/Scheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .registers 3

    .prologue
    .line 92
    const-string/jumbo v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .registers 4

    .prologue
    .line 123
    const-string/jumbo v0, "Scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 125
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .registers 5

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->b(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v0

    .line 73
    if-nez v0, :cond_27

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scheme \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_27
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .registers 3

    .prologue
    .line 105
    const-string/jumbo v0, "Scheme name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 109
    return-object v0
.end method
