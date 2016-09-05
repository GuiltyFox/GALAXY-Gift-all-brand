.class Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry$1;
.super Ljava/lang/Object;
.source "CookieSpecRegistry.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 156
    iput-object p1, p0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry$1;->b:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    iput-object p2, p0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 5

    .prologue
    .line 159
    const-string/jumbo v0, "http.request"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 161
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry$1;->b:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    iget-object v2, p0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry$1;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v0

    return-object v0
.end method
