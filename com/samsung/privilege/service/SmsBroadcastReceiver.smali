.class public Lcom/samsung/privilege/service/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/privilege/service/SmsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/service/SmsBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-char v4, v2, v1

    .line 90
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_12

    .line 92
    :goto_11
    return v0

    .line 89
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 92
    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 21
    const-string/jumbo v0, ""

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_54

    .line 36
    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 37
    array-length v1, v0

    if-nez v1, :cond_26

    .line 86
    :cond_25
    :goto_25
    return-void

    .line 41
    :cond_26
    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 43
    :goto_2f
    array-length v1, v0

    if-ge v2, v1, :cond_4b

    .line 44
    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v2

    .line 45
    aget-object v1, v4, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 47
    :cond_4b
    aget-object v0, v4, v3

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_54
    if-eqz v0, :cond_25

    :try_start_56
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 57
    sget-object v1, Lcom/samsung/privilege/service/SmsBroadcastReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smsBody="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_7f
    array-length v1, v0

    if-ge v3, v1, :cond_25

    .line 60
    aget-object v1, v0, v3

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_98

    .line 62
    invoke-static {v1}, Lcom/samsung/privilege/service/SmsBroadcastReceiver;->a(Ljava/lang/String;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8e} :catch_9f

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_98

    .line 64
    :try_start_92
    invoke-static {v1}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_9b

    .line 70
    :goto_95
    :try_start_95
    invoke-static {v1}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_9d

    .line 59
    :cond_98
    :goto_98
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 65
    :catch_9b
    move-exception v2

    goto :goto_95

    .line 71
    :catch_9d
    move-exception v1

    goto :goto_98

    .line 78
    :catch_9f
    move-exception v0

    goto :goto_25
.end method
