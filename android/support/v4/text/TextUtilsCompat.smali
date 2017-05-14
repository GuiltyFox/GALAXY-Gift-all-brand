.class public final Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field private static final b:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 119
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    .line 149
    :goto_e
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Ljava/util/Locale;

    .line 151
    const-string/jumbo v0, "Arab"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "Hebr"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->d:Ljava/lang/String;

    return-void

    .line 121
    :cond_26
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_e
.end method

.method public static a(Ljava/util/Locale;)I
    .registers 2

    .prologue
    .line 146
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->d:Ljava/lang/String;

    return-object v0
.end method
