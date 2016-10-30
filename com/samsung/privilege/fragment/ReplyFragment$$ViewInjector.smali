.class public Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ReplyFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/privilege/fragment/ReplyFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/ReplyFragment;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v6, 0x7f10066c

    const v2, 0x7f10066a

    const v5, 0x7f100669

    const v4, 0x7f10061f

    const v3, 0x7f10041b

    .line 11
    const-string/jumbo v0, "field \'recyclerView\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'recyclerView\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const v0, 0x7f10066d

    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const v1, 0x7f10066d

    const-string/jumbo v2, "field \'imagePost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->imagePost:Landroid/widget/ImageView;

    .line 15
    const v0, 0x7f10066e

    const-string/jumbo v1, "field \'contentCancel\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f10066e

    const-string/jumbo v2, "field \'contentCancel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->contentCancel:Landroid/widget/LinearLayout;

    .line 17
    const-string/jumbo v0, "field \'contentImagePost\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const-string/jumbo v1, "field \'contentImagePost\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 19
    const v0, 0x7f10066f

    const-string/jumbo v1, "field \'edtTextComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20
    const v1, 0x7f10066f

    const-string/jumbo v2, "field \'edtTextComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    .line 21
    const-string/jumbo v0, "field \'btnPost\' and method \'onClickPost\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    const-string/jumbo v1, "field \'btnPost\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->btnPost:Landroid/widget/Button;

    .line 23
    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector$1;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string/jumbo v0, "field \'contentPost\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const-string/jumbo v1, "field \'contentPost\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->contentPost:Landroid/widget/LinearLayout;

    .line 33
    const-string/jumbo v0, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const-string/jumbo v1, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 35
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/ReplyFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->imagePost:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->contentCancel:Landroid/widget/LinearLayout;

    .line 41
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    .line 43
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->btnPost:Landroid/widget/Button;

    .line 44
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->contentPost:Landroid/widget/LinearLayout;

    .line 45
    iput-object v0, p1, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 46
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/fragment/ReplyFragment$$ViewInjector;->reset(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    return-void
.end method
