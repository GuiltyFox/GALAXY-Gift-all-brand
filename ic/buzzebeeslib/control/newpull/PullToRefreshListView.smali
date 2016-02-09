.class public Lic/buzzebeeslib/control/newpull/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;,
        Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I


# instance fields
.field private mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private mListViewExtrasEnabled:Z

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I
    .registers 3

    .prologue
    .line 39
    sget-object v0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    .local p3, "style":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;)V

    .line 62
    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_c

    .line 212
    new-instance v0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;-><init>(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    .local v0, "lv":Landroid/widget/ListView;
    :goto_b
    return-object v0

    .line 214
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_c
    new-instance v0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;-><init>(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_b
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;
    .registers 6
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;

    move-result-object v1

    .line 195
    .local v1, "proxy":Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;
    iget-boolean v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_26

    .line 196
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    .line 198
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    if-eqz p1, :cond_19

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 199
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 201
    :cond_19
    if-eqz p2, :cond_26

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 202
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayoutProxy;->addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 206
    .end local v0    # "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    :cond_26
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 224
    .local v0, "lv":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 225
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 230
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 232
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mListViewExtrasEnabled:Z

    .line 234
    iget-boolean v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_6f

    .line 235
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 236
    const/4 v3, -0x2

    .line 235
    invoke-direct {v1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 239
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 241
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 245
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    .line 246
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 247
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 255
    invoke-virtual {p0, v5}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 258
    .end local v0    # "frame":Landroid/widget/FrameLayout;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6f
    return-void
.end method

.method protected onRefreshing(Z)V
    .registers 11
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 75
    iget-object v6, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 76
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v6, :cond_1b

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 77
    :cond_1b
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 131
    :cond_1e
    :goto_1e
    return-void

    .line 81
    :cond_1f
    invoke-super {p0, v8}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 86
    invoke-static {}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v6

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_88

    .line 97
    :pswitch_33
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    .line 98
    .local v3, "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v1, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 99
    .local v1, "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 100
    .local v2, "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    const/4 v5, 0x0

    .line 101
    .local v5, "selection":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .line 106
    .local v4, "scrollToY":I
    :goto_46
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    .line 107
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideAllViews()V

    .line 110
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {v1, v8}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 114
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    .line 116
    if-eqz p1, :cond_1e

    .line 118
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V

    .line 122
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setHeaderScroll(I)V

    .line 126
    iget-object v6, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 129
    invoke-virtual {p0, v8}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->smoothScrollTo(I)V

    goto :goto_1e

    .line 89
    .end local v1    # "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v2    # "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v3    # "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v4    # "scrollToY":I
    .end local v5    # "selection":I
    :pswitch_6a
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v3

    .line 90
    .restart local v3    # "origLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v1, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 91
    .restart local v1    # "listViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v2, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 92
    .restart local v2    # "oppositeListViewLoadingView":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v6, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 93
    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .line 94
    .restart local v4    # "scrollToY":I
    goto :goto_46

    .line 86
    nop

    :pswitch_data_88
    .packed-switch 0x3
        :pswitch_6a
        :pswitch_33
        :pswitch_6a
    .end packed-switch
.end method

.method protected onReset()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 138
    iget-boolean v5, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-nez v5, :cond_a

    .line 139
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->onReset()V

    .line 189
    :goto_9
    return-void

    .line 147
    :cond_a
    invoke-static {}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$Mode()[I

    move-result-object v5

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_84

    .line 158
    :pswitch_1b
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    .line 159
    .local v1, "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mHeaderLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 160
    .local v0, "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .line 161
    .local v3, "scrollToHeight":I
    const/4 v4, 0x0

    .line 162
    .local v4, "selection":I
    iget-object v5, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_82

    .line 168
    .local v2, "scrollLvToEdge":Z
    :goto_36
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_58

    .line 171
    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showInvisibleViews()V

    .line 174
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 181
    if-eqz v2, :cond_58

    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getState()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$State;

    if-eq v5, v6, :cond_58

    .line 182
    iget-object v5, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 183
    invoke-virtual {p0, v3}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setHeaderScroll(I)V

    .line 188
    :cond_58
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshAdapterViewBase;->onReset()V

    goto :goto_9

    .line 150
    .end local v0    # "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v1    # "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .end local v2    # "scrollLvToEdge":Z
    .end local v3    # "scrollToHeight":I
    .end local v4    # "selection":I
    :pswitch_5c
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    .line 151
    .restart local v1    # "originalLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mFooterLoadingView:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 152
    .restart local v0    # "listViewLoadingLayout":Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    iget-object v5, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 153
    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .line 154
    .restart local v3    # "scrollToHeight":I
    iget-object v5, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_80

    .line 155
    .restart local v2    # "scrollLvToEdge":Z
    :goto_7f
    goto :goto_36

    .end local v2    # "scrollLvToEdge":Z
    :cond_80
    move v2, v6

    .line 154
    goto :goto_7f

    :cond_82
    move v2, v6

    .line 162
    goto :goto_36

    .line 147
    :pswitch_data_84
    .packed-switch 0x3
        :pswitch_5c
        :pswitch_1b
        :pswitch_5c
    .end packed-switch
.end method
