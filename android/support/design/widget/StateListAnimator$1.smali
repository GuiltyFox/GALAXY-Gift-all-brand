.class Landroid/support/design/widget/StateListAnimator$1;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/StateListAnimator;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    iget-object v0, v0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-ne v0, p1, :cond_b

    .line 35
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 37
    :cond_b
    return-void
.end method
