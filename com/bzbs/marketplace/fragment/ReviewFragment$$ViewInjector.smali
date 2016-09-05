.class public Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ReviewFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bzbs/marketplace/fragment/ReviewFragment;",
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
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/Object;)V
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
    const v6, 0x7f100667

    const v5, 0x7f100666

    const v4, 0x7f100665

    const v2, 0x7f10061b

    const v3, 0x7f10025a

    .line 11
    const-string/jumbo v0, "field \'recyclerView\'"

    invoke-virtual {p1, p3, v5, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string/jumbo v1, "field \'recyclerView\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

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

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 15
    const v0, 0x7f100674

    const-string/jumbo v1, "field \'btnAddPicture\' and method \'onClickAdd\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    const v1, 0x7f100674

    const-string/jumbo v2, "field \'btnAddPicture\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->btnAddPicture:Landroid/widget/ImageView;

    .line 17
    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f100677

    const-string/jumbo v1, "field \'btnAddSticker\' and method \'onClickAdd\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    const v1, 0x7f100677

    const-string/jumbo v2, "field \'btnAddSticker\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->btnAddSticker:Landroid/widget/ImageView;

    .line 27
    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$2;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f10066b

    const-string/jumbo v1, "field \'edtTextComment\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    const v1, 0x7f10066b

    const-string/jumbo v2, "field \'edtTextComment\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f100675

    const-string/jumbo v1, "field \'recyclerItemBelow\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    const v1, 0x7f100675

    const-string/jumbo v2, "field \'recyclerItemBelow\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    .line 39
    const-string/jumbo v0, "field \'viewPager\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    const-string/jumbo v1, "field \'viewPager\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 41
    const v0, 0x7f100679

    const-string/jumbo v1, "field \'listViewHorizontal\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 42
    const v1, 0x7f100679

    const-string/jumbo v2, "field \'listViewHorizontal\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    .line 43
    const v0, 0x7f100669

    const-string/jumbo v1, "field \'imagePost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    const v1, 0x7f100669

    const-string/jumbo v2, "field \'imagePost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f100668

    const-string/jumbo v1, "field \'contentImagePost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    const v1, 0x7f100668

    const-string/jumbo v2, "field \'contentImagePost\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f100678

    const-string/jumbo v1, "field \'contentPager\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    const v1, 0x7f100678

    const-string/jumbo v2, "field \'contentPager\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    .line 49
    const-string/jumbo v0, "field \'pvLinearDeterminate\'"

    invoke-virtual {p1, p3, v6, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 50
    const-string/jumbo v1, "field \'pvLinearDeterminate\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ProgressView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    .line 51
    const-string/jumbo v0, "field \'contentPost\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 52
    const-string/jumbo v1, "field \'contentPost\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPost:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f100676

    const-string/jumbo v1, "field \'tvNoData\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 54
    const v1, 0x7f100676

    const-string/jumbo v2, "field \'tvNoData\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f10066a

    const-string/jumbo v1, "method \'onClickCancel\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 56
    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$3;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f10041a

    const-string/jumbo v1, "method \'onClickPost\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector$4;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 8
    check-cast p2, Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 78
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->btnAddPicture:Landroid/widget/ImageView;

    .line 79
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->btnAddSticker:Landroid/widget/ImageView;

    .line 80
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    .line 81
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    .line 82
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 83
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    .line 84
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    .line 85
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    .line 86
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    .line 87
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    .line 88
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPost:Landroid/widget/LinearLayout;

    .line 89
    iput-object v0, p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    .line 90
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$ViewInjector;->reset(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    return-void
.end method
