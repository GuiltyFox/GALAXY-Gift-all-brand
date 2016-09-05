.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->a(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

.field final synthetic b:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .registers 3

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->b:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->a:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->a:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->b:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->a(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 84
    return-void
.end method
