.class public final Landroid/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 63
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    .line 69
    :goto_d
    return-void

    .line 64
    :cond_e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    .line 65
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    goto :goto_d

    .line 67
    :cond_1a
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;->a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 3

    .prologue
    .line 85
    sget-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 86
    return-void
.end method
