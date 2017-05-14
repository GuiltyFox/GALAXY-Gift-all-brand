.class Landroid/support/v4/widget/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 423
    return-void
.end method
