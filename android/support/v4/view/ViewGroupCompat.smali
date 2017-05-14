.class public final Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 145
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    .line 155
    :goto_d
    return-void

    .line 146
    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    .line 147
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    .line 148
    :cond_1a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_26

    .line 149
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    .line 150
    :cond_26
    const/16 v1, 0xb

    if-lt v0, v1, :cond_32

    .line 151
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d

    .line 153
    :cond_32
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .registers 3

    .prologue
    .line 199
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->a(Landroid/view/ViewGroup;Z)V

    .line 200
    return-void
.end method
