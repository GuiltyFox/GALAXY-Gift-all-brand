.class public Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/CookieStore;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcz/msebera/android/httpclient/cookie/CookieIdentityComparator;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/cookie/CookieIdentityComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;->a:Ljava/util/TreeSet;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lcz/msebera/android/httpclient/cookie/Cookie;)V
    .registers 3

    .prologue
    .line 72
    monitor-enter p0

    if-eqz p1, :cond_18

    .line 74
    :try_start_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->a(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 79
    :cond_18
    monitor-exit p0

    return-void

    .line 72
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;->a:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
