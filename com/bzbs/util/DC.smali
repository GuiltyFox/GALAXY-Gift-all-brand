.class public Lcom/bzbs/util/DC;
.super Ljava/lang/Object;
.source "DC.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 161
    const-string/jumbo v1, ""

    .line 163
    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_10} :catch_11
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 167
    :goto_10
    return-object v0

    .line 164
    :catch_11
    move-exception v0

    .line 165
    :try_start_12
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    move-object v0, v1

    .line 167
    goto :goto_10

    :catchall_17
    move-exception v0

    move-object v0, v1

    goto :goto_10
.end method
