.class public Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "RequestHelpFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/privilege/fragment/RequestHelpFragment;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Object;)V
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
    const v6, 0x7f1004f1

    const v5, 0x7f1004f0

    const v4, 0x7f1004ef

    const v3, 0x7f1004dc

    const v2, 0x7f10049d

    .line 11
    const-string/jumbo v0, "field \'recyclerView\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'recyclerView\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 13
    const-string/jumbo v0, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string/jumbo v1, "field \'mSwipeRefreshLayout\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 15
    const-string/jumbo v0, "field \'pvLinearDeterminate\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const-string/jumbo v1, "field \'pvLinearDeterminate\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ProgressView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    .line 17
    const v0, 0x7f1004fe

    const-string/jumbo v1, "field \'btnAddPicture\' and method \'onClickAdd\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 18
    const v1, 0x7f1004fe

    const-string/jumbo v2, "field \'btnAddPicture\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->btnAddPicture:Landroid/widget/ImageView;

    .line 19
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f1004f2

    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    const v1, 0x7f1004f2

    const-string/jumbo v2, "field \'imagePost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    .line 29
    const-string/jumbo v0, "field \'contentImagePost\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30
    const-string/jumbo v1, "field \'contentImagePost\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 31
    const v0, 0x7f1004f4

    const-string/jumbo v1, "field \'edtTextComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    const v1, 0x7f1004f4

    const-string/jumbo v2, "field \'edtTextComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f1004ff

    const-string/jumbo v1, "field \'recyclerItemBelow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    const v1, 0x7f1004ff

    const-string/jumbo v2, "field \'recyclerItemBelow\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    .line 35
    const-string/jumbo v0, "field \'tvResult\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    const-string/jumbo v1, "field \'tvResult\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f1004f3

    const-string/jumbo v1, "method \'onClickCancel\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f1004f5

    const-string/jumbo v1, "method \'onClickCancel\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector$3;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 60
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    .line 61
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->btnAddPicture:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 64
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    .line 65
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    .line 66
    iput-object v0, p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->tvResult:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$ViewInjector;->reset(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    return-void
.end method
