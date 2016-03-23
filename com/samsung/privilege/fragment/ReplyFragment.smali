.class public Lcom/samsung/privilege/fragment/ReplyFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "ReplyFragment.java"


# static fields
.field public static final KEY_BUZZ:Ljava/lang/String; = "Reply@BuzzKey"

.field public static final KEY_DATA:Ljava/lang/String; = "Reply@Data"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "Reply@Notification"


# instance fields
.field private asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field btnPost:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1003cc
    .end annotation
.end field

.field contentCancel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060e
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060c
    .end annotation
.end field

.field contentPost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10060a
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

.field private isEndSkip:Z

.field private isLoadMore:Z

.field private isOnce:Z

.field private limitPerRound:I

.field private listReviewModel:Ljava/util/ArrayList;
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

.field private message:Ljava/lang/String;

.field private pastVisiblesItems:I

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100609
    .end annotation
.end field

.field private replyAdapter:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

.field private reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

.field private sticker:Ljava/lang/String;

.field private stickerSend:Ljava/lang/String;

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->imagePath:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->sticker:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->stickerSend:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->message:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->empty:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isOnce:Z

    .line 86
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isEndSkip:Z

    .line 88
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->limitPerRound:I

    .line 89
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isLoadMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->totalItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isEndSkip:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isEndSkip:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->totalItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isOnce:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isOnce:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->setupWidget()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/fragment/ReplyFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isLoadMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadData()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->onRefreshData()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadProgress(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/privilege/fragment/ReplyFragment;Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;
    .param p1, "x1"    # Lcom/bzbs/marketplace/model/review/ReviewModel;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/ReplyFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->hideSwipeRefresh()V

    return-void
.end method

.method private addHolderItemHeader(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 9
    .param p1, "isPlaceholder"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "sticker"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 253
    .local v0, "review":Lcom/bzbs/marketplace/model/review/ReviewModel;
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 257
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 259
    invoke-virtual {v0, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->empty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 262
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 264
    return-object v0
.end method

.method private hideKeyboard()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->hideKeyboard(Landroid/view/View;Landroid/app/Activity;)V

    .line 323
    return-void
.end method

.method private hideSwipeRefresh()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 248
    :cond_a
    return-void
.end method

.method private loadData()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-direct {p0, v3}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadProgress(Z)V

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "rowKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_21

    .line 196
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_21
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/privilege/fragment/ReplyFragment$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$4;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 228
    return-void
.end method

.method private loadDataUser(Ljava/lang/String;)V
    .registers 5
    .param p1, "keyBuzz"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadProgress(Z)V

    .line 173
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReviewUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 175
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v2, Lcom/samsung/privilege/fragment/ReplyFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$3;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->excuteModel(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;)V

    .line 190
    return-void
.end method

.method private loadProgress(Z)V
    .registers 4
    .param p1, "VISIBLE"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/ReplyActivity;

    if-eqz v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/ReplyActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->setProgressVisibility(I)V

    .line 348
    :cond_10
    return-void

    .line 346
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method public static newInstance(Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/samsung/privilege/fragment/ReplyFragment;
    .registers 5
    .param p0, "reviewModel"    # Lcom/bzbs/marketplace/model/review/ReviewModel;

    .prologue
    .line 97
    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {v1}, Lcom/samsung/privilege/fragment/ReplyFragment;-><init>()V

    .line 98
    .local v1, "fragment":Lcom/samsung/privilege/fragment/ReplyFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "Reply@Data"

    invoke-static {p0}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/privilege/fragment/ReplyFragment;
    .registers 5
    .param p0, "keyBuzz"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {v1}, Lcom/samsung/privilege/fragment/ReplyFragment;-><init>()V

    .line 106
    .local v1, "fragment":Lcom/samsung/privilege/fragment/ReplyFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "Reply@BuzzKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "Reply@Notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method private onRefreshData()V
    .registers 3

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->isEndSkip:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadData()V

    .line 236
    return-void
.end method

.method private setupRecyclerView()V
    .registers 3

    .prologue
    .line 138
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 139
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->replyAdapter:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->replyAdapter:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$1;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$2;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 169
    return-void
.end method

.method private setupWidget()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->replyAdapter:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->addListAll(Ljava/util/ArrayList;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 9
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
    .line 121
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->hideKeyboard()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->setupRecyclerView()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "Reply@Notification"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    .local v0, "isNotification":Z
    if-eqz v0, :cond_23

    .line 127
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "Reply@BuzzKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "keyBuzz":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->loadDataUser(Ljava/lang/String;)V

    .line 135
    .end local v1    # "keyBuzz":Ljava/lang/String;
    :goto_22
    return-void

    .line 131
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "Reply@Data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->listReviewModel:Ljava/util/ArrayList;

    .line 133
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->onRefreshData()V

    goto :goto_22
.end method

.method protected getLayoutResource()I
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    const v0, 0x7f04012e

    return v0
.end method

.method public onClickPost(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1003cc
        }
    .end annotation

    .prologue
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/buzz/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->reviewModel:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/comments?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 272
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    .line 273
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->message:Ljava/lang/String;

    .line 274
    const-string/jumbo v2, "message"

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->setupWidget()V

    .line 284
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->empty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->hideKeyboard()V

    .line 289
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 290
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v3, Lcom/samsung/privilege/fragment/ReplyFragment$5;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$5;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 319
    :cond_84
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 336
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->asynctask:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->onCancel()V

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->onCancel()V

    .line 342
    :cond_15
    return-void
.end method
