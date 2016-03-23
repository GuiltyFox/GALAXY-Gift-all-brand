.class public Lcom/samsung/privilege/fragment/RequestHelpFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "RequestHelpFragment.java"


# static fields
.field private static final CAMERA_REQUEST:I = 0x270e

.field private static final PICK_CANCEL:I = 0x0

.field private static final PICK_IMAGE:I = 0x1

.field private static final PICK_REQUEST:I = 0x270f


# instance fields
.field private asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field btnAddPicture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100618
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060c
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060f
    .end annotation
.end field

.field private empty:Ljava/lang/String;

.field private httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field private imagePath:Ljava/lang/String;

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060d
    .end annotation
.end field

.field private imageUri:Landroid/net/Uri;

.field private isEndSkip:Z

.field private isImage:Z

.field private isLoadMore:Z

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

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fb
    .end annotation
.end field

.field private pastVisiblesItems:I

.field pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060b
    .end annotation
.end field

.field recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100619
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100609
    .end annotation
.end field

.field private requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

.field private sticker:Ljava/lang/String;

.field private stickerSend:Ljava/lang/String;

.field private totalItemCount:I

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fe
    .end annotation
.end field

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isEndSkip:Z

    .line 101
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isLoadMore:Z

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->sticker:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->stickerSend:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isImage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->loadProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isLoadMore:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lcom/samsung/privilege/adapter/RequestHelpAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->onRefreshData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->hidePick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/privilege/fragment/RequestHelpFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->initProgress(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isImage:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isEndSkip:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isEndSkip:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->hideSwipeRefresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->setupWidget()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->totalItemCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->totalItemCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$lambda$0(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->lambda$onClickCancel$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->lambda$onActivityResult$9(IILandroid/content/Intent;Ljava/lang/Boolean;)V

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

    .line 463
    new-instance v1, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 464
    .local v1, "review":Lcom/bzbs/marketplace/model/review/ReviewModel;
    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 468
    invoke-virtual {v1, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 469
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 470
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 471
    .local v2, "startDate":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 472
    invoke-virtual {v1, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 475
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 477
    return-object v1
.end method

.method private hideKeyboard()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 522
    return-void
.end method

.method private hidePick()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_22

    .line 253
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    .line 254
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 255
    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->selectPick(I)V

    .line 256
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 259
    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method

.method private hideSwipeRefresh()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 236
    :cond_a
    return-void
.end method

.method private initProgress(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    if-eqz v0, :cond_17

    .line 453
    if-eqz p1, :cond_18

    .line 454
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->start()V

    .line 460
    :cond_17
    :goto_17
    return-void

    .line 458
    :cond_18
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    goto :goto_17
.end method

.method private synthetic lambda$onActivityResult$9(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "granted"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 498
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 499
    packed-switch p1, :pswitch_data_3e

    .line 517
    :cond_b
    :goto_b
    return-void

    .line 501
    :pswitch_c
    if-ne p2, v2, :cond_b

    .line 502
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 503
    .local v0, "selectedImage":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->getRealPathFromURI(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/marketplace/util/BitmapScale;->resizeImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    .line 504
    invoke-direct {p0, v3, v3}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->showImageFromResources(ZZ)V

    goto :goto_b

    .line 508
    .end local v0    # "selectedImage":Landroid/net/Uri;
    :pswitch_26
    if-ne p2, v2, :cond_b

    .line 509
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/util/OutputMediaFile;->getRealPathFromURI(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/marketplace/util/BitmapScale;->resizeImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    .line 510
    invoke-direct {p0, v3, v3}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->showImageFromResources(ZZ)V

    goto :goto_b

    .line 499
    :pswitch_data_3e
    .packed-switch 0x270e
        :pswitch_26
        :pswitch_c
    .end packed-switch
.end method

.method private synthetic lambda$onClickCancel$8(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "granted"    # Ljava/lang/Boolean;

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_18d

    .line 359
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "device_id":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 362
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "platform":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UserId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Name= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Surname= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "IMEI= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "osVersion= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Platform= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "stringData":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 367
    .local v8, "stringComment":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "api/buzz/f-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/buzz?token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, "url":Ljava/lang/String;
    new-instance v6, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v6}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 370
    .local v6, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "------------------------"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "message":Ljava/lang/String;
    const-string/jumbo v11, "message"

    invoke-virtual {v6, v11, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isImage:Z

    .line 375
    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_14a

    .line 376
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isImage:Z

    .line 378
    :try_start_13d
    const-string/jumbo v11, "source"

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_14a
    .catch Ljava/io/FileNotFoundException; {:try_start_13d .. :try_end_14a} :catch_18e

    .line 384
    :cond_14a
    :goto_14a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v4, "listModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/review/ReviewModel;>;"
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->stickerSend:Ljava/lang/String;

    invoke-direct {p0, v11, v5, v12, v13}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->addHolderItemHeader(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    iput-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 388
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->showImageFromResources(ZZ)V

    .line 389
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->setupWidget()V

    .line 391
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->initProgress(Z)V

    .line 392
    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->hideKeyboard()V

    .line 395
    new-instance v11, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v12, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    sget-object v13, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v11, v12, v10, v6, v13}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 396
    iget-object v11, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v12, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    invoke-direct {v12, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v11, v12}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 447
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v2    # "device_id":Ljava/lang/String;
    .end local v4    # "listModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/review/ReviewModel;>;"
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v7    # "platform":Ljava/lang/String;
    .end local v8    # "stringComment":Ljava/lang/String;
    .end local v9    # "stringData":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_18d
    return-void

    .line 379
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v1    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v2    # "device_id":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v7    # "platform":Ljava/lang/String;
    .restart local v8    # "stringComment":Ljava/lang/String;
    .restart local v9    # "stringData":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :catch_18e
    move-exception v3

    .line 380
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_14a
.end method

.method private loadData()V
    .registers 5

    .prologue
    .line 141
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->loadProgress(Z)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "rowKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 144
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_21
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlRequestHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 148
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v3, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 179
    return-void
.end method

.method private loadProgress(Z)V
    .registers 4
    .param p1, "VISIBLE"    # Z

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz v0, :cond_10

    .line 535
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setProgressVisibility(I)V

    .line 537
    :cond_10
    return-void

    .line 535
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method public static newInstance()Lcom/samsung/privilege/fragment/RequestHelpFragment;
    .registers 2

    .prologue
    .line 118
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;-><init>()V

    .line 119
    .local v1, "fragment":Lcom/samsung/privilege/fragment/RequestHelpFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v1
.end method

.method private onRefreshData()V
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->isEndSkip:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 229
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->loadData()V

    .line 230
    return-void
.end method

.method private selectPick(I)V
    .registers 4
    .param p1, "select"    # I

    .prologue
    .line 265
    if-eqz p1, :cond_d

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 268
    :cond_d
    return-void
.end method

.method private setupRecyclerView()V
    .registers 3

    .prologue
    .line 182
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 183
    new-instance v0, Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    .line 184
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->setOnTabItemListener(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 224
    return-void
.end method

.method private setupWidget()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->requestHelpAdapter:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->addListAll(Ljava/util/ArrayList;)V

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_19
    return-void
.end method

.method private showImageFromResources(ZZ)V
    .registers 6
    .param p1, "show"    # Z
    .param p2, "isResource"    # Z

    .prologue
    .line 271
    if-nez p1, :cond_29

    .line 272
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->stickerSend:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->sticker:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->empty:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->btnAddPicture:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 286
    :goto_28
    return-void

    .line 280
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    if-eqz p2, :cond_52

    .line 282
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28

    .line 284
    :cond_52
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->sticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28
.end method

.method private showPickPicture()V
    .registers 6

    .prologue
    .line 289
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 290
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;-><init>(Landroid/app/Activity;)V

    .line 291
    .local v0, "reviewPickAdapter":Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 294
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->setOnTabItemListener(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 329
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
    .line 132
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->hideKeyboard()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->listReviewModels:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->initProgress(Z)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->setupRecyclerView()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->loadData()V

    .line 138
    return-void
.end method

.method protected getLayoutResource()I
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    const v0, 0x7f040130

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->lambdaFactory$(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)Lrx/functions/Action1;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 518
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100618
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 335
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->showPickPicture()V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->selectPick(I)V

    .line 337
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10060e,
            0x7f1003cc
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10060e

    if-ne v1, v2, :cond_f

    .line 342
    invoke-direct {p0, v4, v3}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->showImageFromResources(ZZ)V

    .line 449
    :cond_e
    :goto_e
    return-void

    .line 345
    :cond_f
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 347
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e

    .line 351
    :cond_2d
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_e

    .line 355
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$1;->lambdaFactory$(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lrx/functions/Action1;

    move-result-object v2

    .line 356
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_e
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 526
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 527
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->onCancel()V

    .line 529
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_15

    .line 530
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->onCancel()V

    .line 531
    :cond_15
    return-void
.end method
