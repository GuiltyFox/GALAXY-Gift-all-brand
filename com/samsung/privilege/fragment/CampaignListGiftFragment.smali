.class public Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
.super Landroid/support/v4/app/Fragment;
.source "CampaignListGiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;,
        Lcom/samsung/privilege/fragment/CampaignListGiftFragment$GridSpacingItemDecoration;
    }
.end annotation


# instance fields
.field private ITEMS_PER_PAGE:I

.field private TAG:Ljava/lang/String;

.field private gNumColumn:I

.field private loading:Z

.field private mCampaignListAdapter:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLeak:Landroid/view/View;

.field private mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

.field private out_of_data:Z

.field private pastVisiblesItems:I

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const-class v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loading:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->out_of_data:Z

    .line 60
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->ITEMS_PER_PAGE:I

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loadCampaignList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->ITEMS_PER_PAGE:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->totalItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->totalItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->out_of_data:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->out_of_data:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mCampaignListAdapter:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mCampaignListAdapter:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindingEvent()V
    .registers 6

    .prologue
    .line 193
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLeak:Landroid/view/View;

    const v2, 0x7f100106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 194
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$2;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 217
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bzbs/event/RecyclerItemClickListener;

    .line 218
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 236
    return-void
.end method

.method private checkCacheAndLoadNew()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "cat"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "cat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cache_campaign_gift_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "catch_data":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 243
    :try_start_31
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    .local v0, "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    new-instance v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    invoke-direct {v3, p0, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/util/List;)V

    iput-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mCampaignListAdapter:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .line 246
    iget-object v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mCampaignListAdapter:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_48} :catch_50

    .line 251
    .end local v0    # "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    :goto_48
    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loadCampaignList(I)V

    .line 255
    :goto_4b
    return-void

    .line 253
    :cond_4c
    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loadCampaignList(I)V

    goto :goto_4b

    .line 247
    :catch_50
    move-exception v3

    goto :goto_48
.end method

.method private getParamArguments(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 110
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 120
    .end local v1    # "param":Ljava/lang/String;
    :goto_19
    return-object v1

    .line 114
    .restart local v1    # "param":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 117
    .end local v1    # "param":Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v1

    goto :goto_19

    .line 119
    :catch_34
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_19
.end method

.method private initialLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 126
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLeak:Landroid/view/View;

    const v2, 0x7f1005c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    .line 127
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 130
    .local v0, "screenSize":I
    packed-switch v0, :pswitch_data_48

    .line 144
    iput v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    .line 148
    :goto_25
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 149
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    return-void

    .line 132
    :pswitch_3a
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    goto :goto_25

    .line 135
    :pswitch_3e
    iput v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    goto :goto_25

    .line 138
    :pswitch_41
    iput v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    goto :goto_25

    .line 141
    :pswitch_44
    iput v3, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->gNumColumn:I

    goto :goto_25

    .line 130
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
    .end packed-switch
.end method

.method private loadCampaignList(I)V
    .registers 15
    .param p1, "skip"    # I

    .prologue
    const/4 v12, 0x1

    .line 258
    iget-boolean v9, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loading:Z

    if-ne v9, v12, :cond_6

    .line 400
    :goto_5
    return-void

    .line 277
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "mode"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "mode":Ljava/lang/String;
    if-nez v3, :cond_16

    const-string/jumbo v3, ""

    .line 279
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "tags"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "tags":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "cat"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "list_config"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "list_config":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "api/campaign"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "url":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "?device_app_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 285
    const-string/jumbo v9, "cat"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&cat="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&byConfig=true&config="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    :goto_99
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "tokenBzBs":Ljava/lang/String;
    if-eqz v7, :cond_15d

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15d

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 299
    :goto_c4
    if-lez p1, :cond_de

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&$skip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    :cond_de
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 304
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v9, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadCampaignList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iput-boolean v12, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->loading:Z

    .line 306
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 307
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    new-instance v10, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;

    invoke-direct {v10, p0, v4, v5, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;JI)V

    invoke-virtual {v1, v9, v8, v10}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_5

    .line 287
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v4    # "startTime":J
    .end local v7    # "tokenBzBs":Ljava/lang/String;
    :cond_115
    const-string/jumbo v9, "tags"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_143

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&tags="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&byConfig=true&config="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_99

    .line 290
    :cond_143
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&byConfig=true&config="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_99

    .line 296
    .restart local v7    # "tokenBzBs":Ljava/lang/String;
    :cond_15d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&device_locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_c4
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const v0, 0x7f040120

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLeak:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 95
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->initialLayout()V

    .line 83
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->bindingEvent()V

    .line 84
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->checkCacheAndLoadNew()V

    .line 85
    return-void
.end method
