.class Landroid/support/v4/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    .prologue
    .line 986
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 994
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-nez v0, :cond_c

    .line 995
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$5;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 997
    :cond_c
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1001
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 990
    return-void
.end method
