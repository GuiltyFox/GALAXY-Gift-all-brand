.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 34
    :try_start_1
    const-string/jumbo v0, "libcore.icu.ICU"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_2c

    .line 36
    const-string/jumbo v1, "getScript"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->a:Ljava/lang/reflect/Method;

    .line 38
    const-string/jumbo v1, "addLikelySubtags"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/ICUCompatIcs;->b:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 48
    :cond_2c
    :goto_2c
    return-void

    .line 41
    :catch_2d
    move-exception v0

    .line 42
    sput-object v5, Landroid/support/v4/text/ICUCompatIcs;->a:Ljava/lang/reflect/Method;

    .line 43
    sput-object v5, Landroid/support/v4/text/ICUCompatIcs;->b:Ljava/lang/reflect/Method;

    .line 46
    const-string/jumbo v1, "ICUCompatIcs"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 61
    :try_start_1
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 63
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_14} :catch_1e

    .line 73
    :goto_14
    return-object v0

    .line 65
    :catch_15
    move-exception v0

    .line 67
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    move-object v0, v1

    .line 73
    goto :goto_14

    .line 69
    :catch_1e
    move-exception v0

    .line 71
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_b

    .line 53
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :try_start_4
    sget-object v0, Landroid/support/v4/text/ICUCompatIcs;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_21

    .line 92
    :goto_17
    return-object v0

    .line 83
    :catch_18
    move-exception v0

    .line 85
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    move-object v0, v1

    .line 92
    goto :goto_17

    .line 87
    :catch_21
    move-exception v0

    .line 89
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
