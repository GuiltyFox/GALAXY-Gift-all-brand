.class public Lcom/bzbs/util/PhoneManagerUtil;
.super Ljava/lang/Object;
.source "PhoneManagerUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/bzbs/util/PhoneManagerUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/PhoneManagerUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 42
    if-eqz p0, :cond_14

    .line 43
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 44
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_13
    return-object v0

    .line 46
    :cond_14
    const-string/jumbo v0, ""
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_13

    .line 48
    :catch_18
    move-exception v0

    .line 49
    sget-object v1, Lcom/bzbs/util/PhoneManagerUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneManagerUtil|GetSimOperator|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, ""

    goto :goto_13
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x13

    if-ge v0, v1, :cond_59

    .line 58
    if-eqz p0, :cond_32

    .line 59
    :try_start_8
    invoke-static {p0}, Lcom/bzbs/util/TelephonyInfo;->a(Landroid/content/Context;)Lcom/bzbs/util/TelephonyInfo;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/bzbs/util/TelephonyInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v1}, Lcom/bzbs/util/TelephonyInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v0, :cond_20

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 80
    :goto_1f
    return-object v0

    .line 67
    :cond_20
    if-eqz v1, :cond_2d

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    move-object v0, v1

    .line 68
    goto :goto_1f

    .line 71
    :cond_2d
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 73
    :cond_32
    const-string/jumbo v0, ""
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_1f

    .line 75
    :catch_36
    move-exception v0

    .line 76
    sget-object v1, Lcom/bzbs/util/PhoneManagerUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneManagerUtil|GetSimOperatorDual|Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 80
    :cond_59
    invoke-static {p0}, Lcom/bzbs/util/PhoneManagerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
