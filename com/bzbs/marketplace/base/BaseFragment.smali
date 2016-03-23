.class public abstract Lcom/bzbs/marketplace/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public fragment:Landroid/support/v4/app/Fragment;

.field public isClick:Z

.field public isRestore:Z

.field public mActivity:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->isRestore:Z

    .line 28
    iput-boolean v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->isClick:Z

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/bzbs/marketplace/base/BaseFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 85
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 86
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    return-object v0
.end method


# virtual methods
.method protected abstract createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract getLayoutResource()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->getLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->rootView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->rootView:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->bundle:Landroid/os/Bundle;

    .line 37
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->mActivity:Landroid/app/Activity;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->mHandler:Landroid/os/Handler;

    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 65
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 60
    return-void
.end method
