.class public Lcom/bzbs/marketplace/fragment/ReviewFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;,
        Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;
    }
.end annotation


# static fields
.field private static final CAMERA_REQUEST:I = 0x270e

.field private static final PICK_CANCEL:I = 0x0

.field private static final PICK_IMAGE:I = 0x1

.field private static final PICK_REQUEST:I = 0x270f

.field private static final PICK_STICKER:I = 0x2


# instance fields
.field private asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field btnAddPicture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100636
    .end annotation
.end field

.field btnAddSticker:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100639
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10062a
    .end annotation
.end field

.field contentPager:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063a
    .end annotation
.end field

.field contentPost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100628
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10062d
    .end annotation
.end field

.field private empty:Ljava/lang/String;

.field private httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field private id:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10062b
    .end annotation
.end field

.field private imageUri:Landroid/net/Uri;

.field private indicatorDrawerAdapter:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

.field private isEndSkip:Z

.field private isImage:Z

.field private isLoadMore:Z

.field private isPickImage:Z

.field private listReviewModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;"
        }
    .end annotation
.end field

.field private listSticker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/sticker/StickerModel;",
            ">;"
        }
    .end annotation
.end field

.field listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10063b
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005e0
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private pastVisiblesItems:I

.field pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100629
    .end annotation
.end field

.field recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100637
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100627
    .end annotation
.end field

.field private reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

.field private reviewPickAdapter:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

.field private sticker:Ljava/lang/String;

.field private stickerPagerAdapter:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

.field private stickerSend:Ljava/lang/String;

.field private totalItemCount:I

.field tvNoData:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100638
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100214
    .end annotation
.end field

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 132
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isEndSkip:Z

    .line 134
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isLoadMore:Z

    .line 142
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->sticker:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerSend:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->message:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isImage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->totalItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->hideSwipeRefresh()V

    return-void
.end method

.method static synthetic access$102(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->totalItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->setupWidget()V

    return-void
.end method

.method static synthetic access$1300(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->hidePick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->indicatorDrawerAdapter:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/bzbs/marketplace/fragment/ReviewFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->sticker:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerSend:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/bzbs/marketplace/fragment/ReviewFragment;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showImageFromResources(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->initProgress(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isImage:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isImage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/fragment/ReviewFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$302(Lcom/bzbs/marketplace/fragment/ReviewFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isLoadMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->loadReview()V

    return-void
.end method

.method static synthetic access$600(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lcom/bzbs/marketplace/adapter/ReviewAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->onRefreshData()V

    return-void
.end method

.method static synthetic access$800(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->loadProgress(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isEndSkip:Z

    return v0
.end method

.method static synthetic access$902(Lcom/bzbs/marketplace/fragment/ReviewFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/ReviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isEndSkip:Z

    return p1
.end method

.method static synthetic access$lambda$0(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->lambda$onActivityResult$1(IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->lambda$onClickPost$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private addHolderItemHeader(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 11
    .param p1, "isPlaceholder"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "sticker"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 362
    new-instance v1, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 363
    .local v1, "review":Lcom/bzbs/marketplace/model/review/ReviewModel;
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 367
    invoke-virtual {v1, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 368
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 369
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 370
    .local v2, "startDate":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 371
    invoke-virtual {v1, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 374
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 376
    return-object v1
.end method

.method private getDataBundle()V
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->id:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->type:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private hideKeyboard()V
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 683
    return-void
.end method

.method private hidePick()Z
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 671
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 672
    :cond_14
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 673
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->selectPick(I)V

    .line 675
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    move v0, v1

    .line 678
    :cond_27
    return v0
.end method

.method private hideSwipeRefresh()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 358
    :cond_a
    return-void
.end method

.method private initProgress(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_14

    .line 381
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 383
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->start()V

    .line 387
    :goto_13
    return-void

    .line 385
    :cond_14
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    goto :goto_13
.end method

.method private synthetic lambda$onActivityResult$1(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "granted"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 310
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 311
    packed-switch p1, :pswitch_data_3e

    .line 329
    :cond_b
    :goto_b
    return-void

    .line 313
    :pswitch_c
    if-ne p2, v2, :cond_b

    .line 314
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 315
    .local v0, "selectedImage":Landroid/net/Uri;
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->getRealPathFromURI(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/marketplace/util/BitmapScale;->resizeImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    .line 316
    invoke-direct {p0, v3, v3}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showImageFromResources(ZZ)V

    goto :goto_b

    .line 320
    .end local v0    # "selectedImage":Landroid/net/Uri;
    :pswitch_26
    if-ne p2, v2, :cond_b

    .line 321
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/util/OutputMediaFile;->getRealPathFromURI(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/marketplace/util/BitmapScale;->resizeImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    .line 322
    invoke-direct {p0, v3, v3}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showImageFromResources(ZZ)V

    goto :goto_b

    .line 311
    :pswitch_data_3e
    .packed-switch 0x270e
        :pswitch_26
        :pswitch_c
    .end packed-switch
.end method

.method private synthetic lambda$onClickPost$2(Ljava/lang/Boolean;)V
    .registers 11
    .param p1, "granted"    # Ljava/lang/Boolean;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/buzz?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 406
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ce

    .line 407
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->message:Ljava/lang/String;

    .line 408
    const-string/jumbo v4, "message"

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->message:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iput-boolean v8, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isImage:Z

    .line 415
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_e0

    .line 416
    iput-boolean v7, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isImage:Z

    .line 418
    :try_start_74
    const-string/jumbo v4, "source"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_81} :catch_db

    .line 426
    :cond_81
    :goto_81
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 428
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_93

    .line 429
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollbarPosition(I)V

    .line 432
    :cond_93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v1, "listModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/review/ReviewModel;>;"
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerSend:Ljava/lang/String;

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->addHolderItemHeader(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 435
    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 436
    invoke-direct {p0, v8, v7}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showImageFromResources(ZZ)V

    .line 437
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->setupWidget()V

    .line 439
    invoke-direct {p0, v7}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->initProgress(Z)V

    .line 441
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->hideKeyboard()V

    .line 443
    new-instance v4, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 444
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v5, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;

    invoke-direct {v5, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$6;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 495
    .end local v1    # "listModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/review/ReviewModel;>;"
    .end local v2    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v3    # "url":Ljava/lang/String;
    :cond_cd
    :goto_cd
    return-void

    .line 410
    .restart local v2    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_ce
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f09036c

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_cd

    .line 419
    :catch_db
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_81

    .line 422
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_e0
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->sticker:Ljava/lang/String;

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 423
    const-string/jumbo v4, "sticker"

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerSend:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method private loadProgress(Z)V
    .registers 4
    .param p1, "VISIBLE"    # Z

    .prologue
    .line 733
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    if-eqz v0, :cond_10

    .line 734
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/ReviewActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setProgressVisibility(I)V

    .line 736
    :cond_10
    return-void

    .line 734
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method private loadReview()V
    .registers 6

    .prologue
    .line 230
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->loadProgress(Z)V

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "rowKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 233
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_21
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->id:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 237
    const-string/jumbo v2, "OATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urlReviewF:= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v3, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 273
    return-void
.end method

.method private onRefreshData()V
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isEndSkip:Z

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 279
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->loadReview()V

    .line 280
    return-void
.end method

.method private selectPick(I)V
    .registers 4
    .param p1, "select"    # I

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_12

    .line 616
    :pswitch_3
    if-eqz p1, :cond_10

    .line 617
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 619
    :cond_10
    return-void

    .line 607
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private setupRecyclerView()V
    .registers 4

    .prologue
    .line 176
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->type:Ljava/lang/String;

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 178
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    .line 183
    :goto_1f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 184
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 186
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 206
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->setOnTabItemListener(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 224
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->type:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->type:Ljava/lang/String;

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 225
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :cond_61
    return-void

    .line 180
    :cond_62
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    goto :goto_1f
.end method

.method private setupWidget()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewAdapter:Lcom/bzbs/marketplace/adapter/ReviewAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewAdapter;->addListAll(Ljava/util/ArrayList;)V

    .line 286
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 287
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 294
    :goto_1c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    if-nez v0, :cond_2c

    .line 303
    :goto_20
    return-void

    .line 290
    :cond_21
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1c

    .line 297
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->edtTextComment:Landroid/widget/EditText;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_20
.end method

.method private showImageFromResources(ZZ)V
    .registers 7
    .param p1, "show"    # Z
    .param p2, "isResource"    # Z

    .prologue
    const/4 v3, 0x0

    .line 333
    if-nez p1, :cond_22

    .line 334
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerSend:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->sticker:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 346
    :goto_21
    return-void

    .line 341
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentImagePost:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    if-eqz p2, :cond_50

    .line 343
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/MemoryPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    new-array v2, v3, [Lcom/squareup/picasso/NetworkPolicy;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_21

    .line 345
    :cond_50
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->sticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_21
.end method

.method private showPickPicture()V
    .registers 5

    .prologue
    .line 623
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 625
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewPickAdapter:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    .line 626
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 627
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewPickAdapter:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 629
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->reviewPickAdapter:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->setOnTabItemListener(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 667
    return-void
.end method

.method private showPickSticker()V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->contentPager:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 565
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/marketplace/sticker/StickerUtil;->GetStickerSets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    .line 566
    invoke-virtual {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listSticker:Ljava/util/ArrayList;

    .line 568
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listSticker:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerPagerAdapter:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    .line 569
    new-instance v0, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listSticker:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->indicatorDrawerAdapter:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    .line 571
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->stickerPagerAdapter:Lcom/bzbs/marketplace/adapter/pager/StickerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 572
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->indicatorDrawerAdapter:Lcom/bzbs/marketplace/adapter/IndicatorDrawerAdapter;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 573
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSmoothScrollbarEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$8;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$8;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 591
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listViewHorizontal:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$9;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;)V

    .line 600
    return-void
.end method


# virtual methods
.method protected createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5
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
    .line 162
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->hideKeyboard()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 165
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getDataBundle()V

    .line 166
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->setupRecyclerView()V

    .line 167
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->loadReview()V

    .line 168
    return-void
.end method

.method protected getLayoutResource()I
    .registers 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    const v0, 0x7f04013d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 308
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$1;->lambdaFactory$(Lcom/bzbs/marketplace/fragment/ReviewFragment;IILandroid/content/Intent;)Lrx/functions/Action1;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 330
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100636,
            0x7f100639
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 558
    :goto_e
    :pswitch_e
    return-void

    .line 548
    :pswitch_f
    iput-boolean v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isPickImage:Z

    .line 549
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showPickPicture()V

    .line 550
    invoke-direct {p0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->selectPick(I)V

    goto :goto_e

    .line 553
    :pswitch_18
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->isPickImage:Z

    .line 554
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showPickSticker()V

    .line 555
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->selectPick(I)V

    goto :goto_e

    .line 546
    :pswitch_data_22
    .packed-switch 0x7f100636
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10062c
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->showImageFromResources(ZZ)V

    .line 351
    return-void
.end method

.method public onClickPost(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1003d5
        }
    .end annotation

    .prologue
    .line 392
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 393
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 394
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09024b

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 500
    :goto_1d
    return-void

    .line 398
    :cond_1e
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_4a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 400
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$$Lambda$2;->lambdaFactory$(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Lrx/functions/Action1;

    move-result-object v3

    .line 401
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_1d

    .line 497
    :cond_4a
    new-instance v2, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 498
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v5, "BZB Campaign Review"

    const-string/jumbo v6, "send_review"

    invoke-static {v3, v4, v2, v5, v6}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 725
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 726
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 727
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->onCancel()V

    .line 728
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_15

    .line 729
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->onCancel()V

    .line 730
    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 694
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onPause()V

    .line 695
    invoke-static {}, Lcom/bzbs/marketplace/util/StickerEvents;->clearPostListener()V

    .line 696
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 688
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onResume()V

    .line 689
    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/marketplace/util/StickerEvents;->addListener(Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;)V

    .line 690
    return-void
.end method
