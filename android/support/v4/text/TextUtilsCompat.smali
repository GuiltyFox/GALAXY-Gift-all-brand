.class public final Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static final d:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    const/16 v1, 0x11

    if-lt v0, v1, :cond_25

    .line 125
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->d:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    .line 155
    :goto_d
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Ljava/util/Locale;

    .line 157
    const-string/jumbo v0, "Arab"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "Hebr"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    return-void

    .line 127
    :cond_25
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->d:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_d
.end method

.method public static a(Ljava/util/Locale;)I
    .registers 2

    .prologue
    .line 152
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->d:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
