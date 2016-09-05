.class public final Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;
.super Ljava/lang/Object;
.source "SchemeRegistryFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 50
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v2, "http"

    const/16 v3, 0x50

    .line 51
    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 50
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 52
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    .line 53
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 52
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 54
    return-object v0
.end method
