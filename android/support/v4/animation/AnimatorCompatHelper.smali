.class public final Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field private static final a:Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_e

    .line 31
    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Landroid/support/v4/animation/AnimatorProvider;

    .line 35
    :goto_d
    return-void

    .line 33
    :cond_e
    new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Landroid/support/v4/animation/AnimatorProvider;

    goto :goto_d
.end method

.method public static a()Landroid/support/v4/animation/ValueAnimatorCompat;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0}, Landroid/support/v4/animation/AnimatorProvider;->a()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorProvider;->a(Landroid/view/View;)V

    .line 45
    return-void
.end method
