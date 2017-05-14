.class Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)I
    .registers 3

    .prologue
    .line 76
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->a(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/res/Resources;)I
    .registers 3

    .prologue
    .line 81
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->b(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/res/Resources;)I
    .registers 3

    .prologue
    .line 86
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->c(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
