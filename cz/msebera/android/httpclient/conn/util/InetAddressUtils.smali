.class public Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;
.super Ljava/lang/Object;
.source "InetAddressUtils.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string/jumbo v0, "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->a:Ljava/util/regex/Pattern;

    .line 52
    const-string/jumbo v0, "^::[fF]{4}:(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->b:Ljava/util/regex/Pattern;

    .line 55
    const-string/jumbo v0, "^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->c:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->d:Ljava/util/regex/Pattern;

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 104
    move v0, v1

    move v2, v1

    .line 105
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_16

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_13

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 105
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :cond_16
    const/4 v0, 0x7

    if-gt v2, v0, :cond_26

    sget-object v0, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 120
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
