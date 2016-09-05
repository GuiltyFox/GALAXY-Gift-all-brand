.class public final Lcz/msebera/android/httpclient/params/HttpParamConfig;
.super Ljava/lang/Object;
.source "HttpParamConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/MessageConstraints;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 59
    invoke-static {}, Lcz/msebera/android/httpclient/config/MessageConstraints;->d()Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    move-result-object v0

    const-string/jumbo v1, "http.connection.max-header-count"

    .line 60
    invoke-interface {p0, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->b(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    move-result-object v0

    const-string/jumbo v1, "http.connection.max-line-length"

    .line 61
    invoke-interface {p0, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->a()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method
