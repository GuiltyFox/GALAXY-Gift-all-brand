.class Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
.super Landroid/support/v7/widget/TintInfo;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field public a:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/AppCompatBackgroundHelper$1;)V
    .registers 2

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/support/v7/widget/TintInfo;->a()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->a:Landroid/content/res/ColorStateList;

    .line 229
    return-void
.end method
