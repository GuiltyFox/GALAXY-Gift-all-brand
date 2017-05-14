.class Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V
    .registers 3

    .prologue
    .line 791
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 793
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->changeMenuMode()V

    .line 799
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->i(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 800
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->d()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 801
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 803
    :cond_30
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 804
    return-void
.end method
