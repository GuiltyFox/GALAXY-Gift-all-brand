.class public abstract Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;
.super Ljava/lang/Object;
.source "AbstractCookieSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;->a:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V
    .registers 4

    .prologue
    .line 65
    const-string/jumbo v0, "Attribute name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v0, "Attribute handler"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method protected c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
