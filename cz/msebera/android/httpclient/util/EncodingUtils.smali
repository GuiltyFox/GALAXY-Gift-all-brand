.class public final Lcz/msebera/android/httpclient/util/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    const-string/jumbo v0, "Input"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 5

    .prologue
    .line 125
    const-string/jumbo v0, "Input"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    :try_start_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    .line 128
    :catch_12
    move-exception v0

    .line 129
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "ASCII not supported"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 106
    const-string/jumbo v0, "Input"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    :try_start_6
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 109
    :catch_11
    move-exception v0

    .line 110
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "ASCII not supported"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 90
    const-string/jumbo v0, "Input"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v0, "Charset"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 93
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v0

    .line 95
    :goto_10
    return-object v0

    .line 94
    :catch_11
    move-exception v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_10
.end method
