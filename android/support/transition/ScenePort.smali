.class final Landroid/support/transition/ScenePort;
.super Ljava/lang/Object;
.source "ScenePort.java"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/transition/ScenePort;
    .registers 2

    .prologue
    .line 129
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ScenePort;

    return-object v0
.end method

.method static a(Landroid/view/View;Landroid/support/transition/ScenePort;)V
    .registers 3

    .prologue
    .line 118
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/transition/ScenePort;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ScenePort;->a(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    if-ne v0, p0, :cond_11

    .line 152
    iget-object v0, p0, Landroid/support/transition/ScenePort;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Landroid/support/transition/ScenePort;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_11
    return-void
.end method
