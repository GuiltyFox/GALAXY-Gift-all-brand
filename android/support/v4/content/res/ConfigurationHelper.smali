.class public final Landroid/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# static fields
.field private static final a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    .line 34
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    .line 40
    :goto_e
    return-void

    .line 35
    :cond_f
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1b

    .line 36
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_e

    .line 38
    :cond_1b
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_e
.end method

.method public static a(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 104
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->a(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->b(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 124
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->c(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
