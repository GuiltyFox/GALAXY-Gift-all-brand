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

    .line 196
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->a:F

    .line 198
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->b:F

    .line 487
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->c:F

    .line 489
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->d:F

    .line 513
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->e:F

    .line 515
    sput v0, Lcom/bzbs/lib/survey/util/BBUtil;->f:F

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 59
    :goto_8
    return-object v0

    .line 58
    :catch_9
    move-exception v0

    .line 59
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8
.end method
