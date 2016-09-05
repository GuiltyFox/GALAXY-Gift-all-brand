.class public final Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final a:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 55
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    .line 61
    :goto_d
    return-void

    .line 56
    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    .line 57
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_d

    .line 59
    :cond_1a
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    goto :goto_d
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$ICUCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatImpl;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
