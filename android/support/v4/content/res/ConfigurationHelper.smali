.class public final Landroid/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# static fields
.field private static final a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 34
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    .line 40
    :goto_d
    return-void

    .line 35
    :cond_e
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1a

    .line 36
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    invoke-direct {v0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d

    .line 38
    :cond_1a
    new-instance v0, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;

    invoke-direct {v0}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

    sput-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d
.end method

.method public static a(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->a(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 123
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->b(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/res/Resources;)I
    .registers 2

    .prologue
    .line 133
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->a:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->c(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
