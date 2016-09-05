.class public Lcz/msebera/android/httpclient/params/BasicHttpParams;
.super Lcz/msebera/android/httpclient/params/AbstractHttpParams;
.source "BasicHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
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
    .line 59
    invoke-direct {p0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .prologue
    .line 67
    if-nez p1, :cond_3

    .line 75
    :goto_2
    return-object p0

    .line 70
    :cond_3
    if-eqz p2, :cond_b

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    goto :goto_a

    .line 175
    :cond_24
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    .line 160
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 161
    return-object v0
.end method
