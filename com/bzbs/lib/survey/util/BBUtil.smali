.class public Lcom/bzbs/lib/survey/util/BBUtil;
.super Ljava/lang/Object;
.source "BBUtil.java"


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:F

.field private static f:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 198
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->a:F

    .line 200
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->b:F

    .line 489
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->c:F

    .line 491
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->d:F

    .line 515
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->e:F

    .line 517
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->f:F

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 61
    :goto_8
    return-object v0

    .line 60
    :catch_9
    move-exception v0

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;)F
    .registers 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 69
    :goto_4
    return v0

    .line 68
    :catch_5
    move-exception v0

    .line 69
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 643
    const-string/jumbo v1, ""

    .line 645
    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_10} :catch_11
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 649
    :goto_10
    return-object v0

    .line 646
    :catch_11
    move-exception v0

    .line 647
    :try_start_12
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    move-object v0, v1

    .line 649
    goto :goto_10

    :catchall_17
    move-exception v0

    move-object v0, v1

    goto :goto_10
.end method
