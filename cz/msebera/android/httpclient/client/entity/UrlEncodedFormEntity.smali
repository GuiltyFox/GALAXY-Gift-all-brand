.class public Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;
.super Lcz/msebera/android/httpclient/entity/StringEntity;
.source "UrlEncodedFormEntity.java"


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p2, :cond_12

    move-object v0, p2

    :goto_3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    .line 79
    invoke-static {v1, p2}, Lcz/msebera/android/httpclient/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    .line 77
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    .line 80
    return-void

    .line 77
    :cond_12
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    goto :goto_3
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p2, :cond_12

    move-object v0, p2

    :goto_3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    .line 62
    invoke-static {v1, p2}, Lcz/msebera/android/httpclient/entity/ContentType;->a(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    .line 60
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    .line 63
    return-void

    .line 60
    :cond_12
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    .line 61
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
