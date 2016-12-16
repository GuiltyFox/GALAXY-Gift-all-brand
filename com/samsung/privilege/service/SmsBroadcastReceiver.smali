.class public Lcom/samsung/privilege/service/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/privilege/service/SmsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/service/SmsBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-char v4, v2, v1

    .line 63
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_12

    .line 65
    :goto_11
    return v0

    .line 62
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 65
    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 17
    const-string/jumbo v0, ""

    .line 20
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 22
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_4e

    move-result-object v0

    .line 30
    :goto_1f
    if-eqz v0, :cond_58

    :try_start_21
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 31
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    const/4 v0, 0x0

    :goto_32
    array-length v2, v1

    if-ge v0, v2, :cond_58

    .line 33
    aget-object v2, v1, v0

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4b

    .line 35
    invoke-static {v2}, Lcom/samsung/privilege/service/SmsBroadcastReceiver;->a(Ljava/lang/String;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_41} :catch_57

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    .line 37
    :try_start_45
    invoke-static {v2}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_53

    .line 43
    :goto_48
    :try_start_48
    invoke-static {v2}, Lcom/samsung/privilege/util/DialogChangeMobileNoUtil;->a(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_55

    .line 32
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 25
    :catch_4e
    move-exception v0

    .line 26
    const-string/jumbo v0, ""

    goto :goto_1f

    .line 38
    :catch_53
    move-exception v3

    goto :goto_48

    .line 44
    :catch_55
    move-exception v2

    goto :goto_4b

    .line 51
    :catch_57
    move-exception v0

    .line 59
    :cond_58
    return-void
.end method
