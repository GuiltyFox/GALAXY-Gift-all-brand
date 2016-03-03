.class public Lcom/samsung/privilege/activity/RequestHelpActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RequestHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;,
        Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;,
        Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;,
        Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;,
        Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"

.field private static final ITEM_POSITION_KEY:Ljava/lang/String; = "itemPosition"

.field private static final LIST_POSITION_KEY:Ljava/lang/String; = "listPosition"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listState"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private RC_PERMISSIONS_WALL:I

.field private RC_REVIEW_OF_REVIEW:I

.field private RC_REVIEW_POST:I

.field private TAG:Ljava/lang/String;

.field private footerListView:Landroid/view/View;

.field private gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

.field private gHandler:Landroid/os/Handler;

.field private gIsHaveMoreData:Z

.field private gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

.field private gLoading:Z

.field private gRequestHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketReview;",
            ">;"
        }
    .end annotation
.end field

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private header_no_review_ListView:Landroid/view/View;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mItemPosition:I

.field private mListPosition:I

.field private mListState:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 65
    const-string v0, "RequestHelpActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->LOGCAT:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    .line 81
    const/16 v0, 0x21

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_PERMISSIONS_WALL:I

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_POST:I

    .line 85
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_OF_REVIEW:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    .line 222
    iput v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListPosition:I

    .line 223
    iput v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mItemPosition:I

    .line 523
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gLoading:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/RequestHelpActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/RequestHelpActivity;)Z
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gLoading:Z

    return v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/RequestHelpActivity;)Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gIsHaveMoreData:Z

    return v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V
    .registers 2

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->loadRequestHelp(Z)V

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3

    .prologue
    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gIsHaveMoreData:Z

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V
    .registers 2

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setLayoutByReview(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V
    .registers 2

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gLoading:Z

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 2

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    return-object v0
.end method

.method private actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 8
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    const/4 v4, 0x0

    .line 1158
    if-eqz p1, :cond_71

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1161
    const-string v1, "POINTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>RQ(LikeMarketReview,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1163
    :cond_68
    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-static {v0, v4, v1, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1171
    :goto_70
    return-void

    .line 1165
    .end local v0    # "url":Ljava/lang/String;
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/like?method=delete&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    .restart local v0    # "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1167
    const-string v1, "POINTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>RQ(UnLikeMarketReview,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1169
    :cond_d6
    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/RequestHelpActivity$ProcessActionLikeListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-static {v0, v4, v1, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_70
.end method

.method private getHelpNumber()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_d9

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d9

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "api/profile/me/help"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v8, Lcom/samsung/privilege/bean/InputItem;

    const-string v9, "token"

    invoke-direct {v8, v9, v5}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "samsung"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GT-I9100"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "platform":Ljava/lang/String;
    new-instance v8, Lcom/samsung/privilege/bean/InputItem;

    const-string v9, "platform"

    invoke-direct {v8, v9, v4}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 458
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v8, Lcom/samsung/privilege/bean/InputItem;

    const-string v9, "os"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v7, ""

    .line 463
    .local v7, "versionName":Ljava/lang/String;
    :try_start_79
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v7, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_88} :catch_da

    .line 467
    :goto_88
    new-instance v8, Lcom/samsung/privilege/bean/InputItem;

    const-string v9, "client_version"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "carrier":Ljava/lang/String;
    new-instance v8, Lcom/samsung/privilege/bean/InputItem;

    const-string v9, "carrier"

    invoke-direct {v8, v9, v1}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v8, "RequestHelpActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getHelpNumber --> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v8, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    invoke-direct {v8, p0, v12}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)V

    invoke-static {v6, v3, v8, v12}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 476
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "carrier":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v4    # "platform":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_d9
    return-void

    .line 464
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v4    # "platform":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "versionName":Ljava/lang/String;
    :catch_da
    move-exception v2

    .line 465
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "RequestHelpActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t get versionName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88
.end method

.method private initialLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40800000

    .line 293
    const v6, 0x7f0c005b

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, "tvHeaderCaption":Landroid/widget/TextView;
    if-eqz v2, :cond_2c

    .line 296
    :try_start_e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 297
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_be

    .line 308
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_2c
    :goto_2c
    const v6, 0x7f0c0370

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 310
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300ef

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    .line 312
    iget-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    const/high16 v7, 0x7f200000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 313
    .local v5, "tvInfo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 314
    .local v1, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    const v6, 0x7f0c036e

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 318
    .local v3, "tvHelpCodeCaption":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 321
    const v6, 0x7f0c036f

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 322
    .local v4, "tvHelpCodeNumber":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030124

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->footerListView:Landroid/view/View;

    .line 328
    iget-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v7, Lcom/samsung/privilege/activity/RequestHelpActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$2;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnRefreshListener(Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;)V

    .line 334
    iget-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v7, Lcom/samsung/privilege/activity/RequestHelpActivity$3;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$3;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/control/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 370
    return-void

    .line 300
    .end local v1    # "tf":Landroid/graphics/Typeface;
    .end local v3    # "tvHelpCodeCaption":Landroid/widget/TextView;
    .end local v4    # "tvHelpCodeNumber":Landroid/widget/TextView;
    .end local v5    # "tvInfo":Landroid/widget/TextView;
    :catch_be
    move-exception v6

    goto/16 :goto_2c
.end method

.method private loadRequestHelp(Z)V
    .registers 6
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 526
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gLoading:Z

    if-eqz v1, :cond_c

    .line 527
    const-string v1, "RequestHelpActivity"

    const-string v2, "loadMarketReview --> can not load, because the current loading is not finish..."

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_b
    return-void

    .line 529
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gLoading:Z

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/buzz/f-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/list?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_7b

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lastRowKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/MarketReview;->RowKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_7b
    const-string v1, "RequestHelpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadMarketReview --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Z)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_b
.end method

.method private processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3
    .param p1, "pTagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 769
    new-instance v0, Lcom/samsung/privilege/activity/RequestHelpActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$5;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const-string v0, "RequestHelpActivity"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setLayoutByReview(Z)V

    .line 271
    :try_start_13
    const-string v0, "listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    .line 272
    const-string v0, "listPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListPosition:I

    .line 273
    const-string v0, "itemPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mItemPosition:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 280
    :cond_2b
    :goto_2b
    return-void

    .line 274
    :catch_2c
    move-exception v0

    goto :goto_2b
.end method

.method private setLayoutByCatch()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 373
    const-string v6, "RequestHelp"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "catch_RequestHelp":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 376
    :try_start_13
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 377
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_4e

    move-result v6

    if-lt v3, v6, :cond_23

    .line 396
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1f
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->loadRequestHelp(Z)V

    .line 400
    :goto_22
    return-void

    .line 379
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_23
    :try_start_23
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 381
    .local v5, "json_market_review":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/privilege/bean/MarketReview;

    invoke-direct {v7, v5}, Lcom/samsung/privilege/bean/MarketReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_31} :catch_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_4e

    .line 377
    .end local v5    # "json_market_review":Lorg/json/JSONObject;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 382
    :catch_34
    move-exception v1

    .line 383
    .local v1, "e":Lorg/json/JSONException;
    :try_start_35
    const-string v6, "RequestHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(GetMarketReviewRequestListener|onComplete|for|JSONException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_4e

    goto :goto_31

    .line 386
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_4e
    move-exception v2

    .line 387
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "RequestHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(initialLayoutByCatch|step1):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 398
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_68
    invoke-direct {p0, v9}, Lcom/samsung/privilege/activity/RequestHelpActivity;->loadRequestHelp(Z)V

    goto :goto_22
.end method

.method private setLayoutByReview(Z)V
    .registers 7
    .param p1, "pLoadMore"    # Z

    .prologue
    const/4 v4, 0x0

    .line 404
    if-eqz p1, :cond_10

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->notifyDataSetChanged()V

    .line 435
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 440
    :goto_f
    return-void

    .line 407
    :cond_10
    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    .line 408
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_38

    move-result v1

    if-lez v1, :cond_57

    .line 411
    :try_start_25
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_30

    .line 413
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_6b

    .line 419
    :cond_30
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_8

    .line 436
    :catch_38
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "RequestHelpActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error While Load Market Review...:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_f

    .line 422
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_38

    .line 425
    :try_start_5d
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 427
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->header_no_review_ListView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_8

    .line 429
    :catch_69
    move-exception v1

    goto :goto_8

    .line 415
    :catch_6b
    move-exception v1

    goto :goto_30
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->finish()V

    .line 687
    return-void
.end method

.method public doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 7
    .param p1, "isLike"    # Z
    .param p2, "tagLike"    # Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/RequestHelpActivity$6;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 1154
    const-wide/16 v2, 0x64

    .line 1145
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1155
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 704
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 705
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 706
    .local v3, "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    iget-object v5, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v5, v5, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-eqz v5, :cond_48

    const/4 v0, 0x0

    .line 708
    .local v0, "isLike":Z
    :goto_1e
    iget-object v5, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v5, v5, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    if-nez v5, :cond_4a

    .line 711
    iget-object v1, v3, Lcom/samsung/privilege/bean/TagLikeMarketReview;->layoutLike:Landroid/widget/RelativeLayout;

    .line 713
    .local v1, "layoutLike":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040011

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 714
    .local v2, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 715
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 716
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 718
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 719
    new-instance v4, Lcom/samsung/privilege/activity/RequestHelpActivity$4;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$4;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;ZLandroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 766
    .end local v0    # "isLike":Z
    .end local v1    # "layoutLike":Landroid/widget/RelativeLayout;
    .end local v2    # "likeClickAnimation1":Landroid/view/animation/Animation;
    .end local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :goto_47
    return-void

    .restart local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :cond_48
    move v0, v4

    .line 706
    goto :goto_1e

    .line 760
    .restart local v0    # "isLike":Z
    :cond_4a
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 761
    invoke-virtual {p0, v0, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    goto :goto_47

    .line 764
    .end local v0    # "isLike":Z
    .end local v3    # "tagLike":Lcom/samsung/privilege/bean/TagLikeMarketReview;
    :cond_51
    const v4, 0x7f090309

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    goto :goto_47
.end method

.method public doPostRequestHelp(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 694
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 695
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 697
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_POST:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 701
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_20
    return-void

    .line 699
    :cond_21
    const v1, 0x7f090309

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    goto :goto_20
.end method

.method public doRefresh(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->loadRequestHelp(Z)V

    .line 691
    return-void
.end method

.method public doReviewOfReview(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 821
    .local v2, "position":I
    iget-object v4, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketReview;

    .line 823
    .local v3, "review":Lcom/samsung/privilege/bean/MarketReview;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "MarketReview"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 826
    iget v4, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_OF_REVIEW:I

    invoke-virtual {p0, v1, v4}, Lcom/samsung/privilege/activity/RequestHelpActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 830
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "position":I
    .end local v3    # "review":Lcom/samsung/privilege/bean/MarketReview;
    :goto_27
    return-void

    .line 827
    :catch_28
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|doReviewOfReview):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public doSeeMore(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 807
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 809
    .local v1, "position":I
    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/MarketReview;

    .line 811
    .local v2, "request":Lcom/samsung/privilege/bean/MarketReview;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 812
    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->notifyDataSetChanged()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 816
    .end local v1    # "position":I
    .end local v2    # "request":Lcom/samsung/privilege/bean/MarketReview;
    :goto_1a
    return-void

    .line 813
    :catch_1b
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RequestHelpActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|doSeeMore):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 610
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 611
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_98

    iget v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_POST:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_98

    .line 614
    :try_start_e
    const-string v12, "response_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 616
    .local v9, "response_text":Ljava/lang/String;
    if-eqz v9, :cond_5b

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5b

    .line 617
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/RequestHelpActivity;->doRefresh(Landroid/view/View;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_b3

    .line 619
    const/4 v7, 0x0

    .line 620
    .local v7, "points":I
    :try_start_25
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_99
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_b3

    .line 623
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    :try_start_2a
    const-string v12, "buzzebees"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_119
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2f} :catch_99

    move-result-object v4

    .line 626
    .local v4, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_30
    const-string v12, "points"

    invoke-static {v4, v12}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 627
    if-lez v7, :cond_48

    .line 628
    sget-object v12, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v11, "comment"

    .line 630
    .local v11, "strFrom":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v7, v11, v12, p0}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_48} :catch_11f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_48} :catch_99

    .line 639
    .end local v11    # "strFrom":Ljava/lang/String;
    :cond_48
    :goto_48
    :try_start_48
    const-string v12, "new_user_rank"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 640
    .local v5, "json_user_rank":Lorg/json/JSONObject;
    const-string v12, "rank"

    invoke-static {v5, v12}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 641
    .local v8, "rank":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/samsung/privilege/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5b} :catch_11c
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_5b} :catch_99

    .line 654
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v5    # "json_user_rank":Lorg/json/JSONObject;
    .end local v7    # "points":I
    .end local v8    # "rank":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_98

    :try_start_60
    iget v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->RC_REVIEW_OF_REVIEW:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_62} :catch_b3

    move/from16 v0, p1

    if-ne v0, v12, :cond_98

    .line 656
    :try_start_66
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    const-string v13, "Back from review of review."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v12, "review"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/samsung/privilege/bean/MarketReview;

    .line 658
    .local v6, "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    if-eqz v6, :cond_111

    .line 659
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Found review:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_90
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_95} :catch_f4

    move-result v12

    if-lt v2, v12, :cond_cd

    .line 683
    .end local v2    # "j":I
    .end local v6    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    .end local v9    # "response_text":Ljava/lang/String;
    :cond_98
    :goto_98
    return-void

    .line 650
    .restart local v7    # "points":I
    .restart local v9    # "response_text":Ljava/lang/String;
    :catch_99
    move-exception v1

    .line 651
    .local v1, "e":Lorg/json/JSONException;
    :try_start_9a
    const-string v12, "buzzebees.wall4"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b2} :catch_b3

    goto :goto_5b

    .line 679
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v7    # "points":I
    .end local v9    # "response_text":Ljava/lang/String;
    :catch_b3
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "RequestHelpActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error while back from review post:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 661
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "j":I
    .restart local v6    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    .restart local v9    # "response_text":Ljava/lang/String;
    :cond_cd
    :try_start_cd
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gRequestHelp:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/privilege/bean/MarketReview;

    .line 662
    .local v10, "reviewBinding":Lcom/samsung/privilege/bean/MarketReview;
    iget-object v12, v10, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    iget-object v13, v6, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10e

    .line 663
    iget v12, v6, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    iput v12, v10, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    .line 664
    iget v12, v6, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    iput v12, v10, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 666
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    const-string v13, "Swap object..."

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gAdapter:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    invoke-virtual {v12}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->notifyDataSetChanged()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_f3} :catch_f4

    goto :goto_98

    .line 675
    .end local v2    # "j":I
    .end local v6    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    .end local v10    # "reviewBinding":Lcom/samsung/privilege/bean/MarketReview;
    :catch_f4
    move-exception v1

    .line 676
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f5
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error while back from review of review:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_10d} :catch_b3

    goto :goto_98

    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "j":I
    .restart local v6    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    .restart local v10    # "reviewBinding":Lcom/samsung/privilege/bean/MarketReview;
    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .line 673
    .end local v2    # "j":I
    .end local v10    # "reviewBinding":Lcom/samsung/privilege/bean/MarketReview;
    :cond_111
    :try_start_111
    iget-object v12, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->TAG:Ljava/lang/String;

    const-string v13, "Not found review!"

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_118} :catch_f4

    goto :goto_98

    .line 647
    .end local v6    # "marketReview":Lcom/samsung/privilege/bean/MarketReview;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :catch_119
    move-exception v12

    goto/16 :goto_5b

    .line 642
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_11c
    move-exception v12

    goto/16 :goto_5b

    .line 633
    :catch_11f
    move-exception v12

    goto/16 :goto_48
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_ce

    .line 96
    const-string v8, "RequestHelpActivity"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->requestWindowFeature(I)Z

    .line 101
    const v8, 0x7f030114

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 104
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;

    .line 106
    const v8, 0x7f0c0031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 107
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 108
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :goto_43
    const v8, 0x7f0c005a

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 118
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 119
    const v8, 0x7f0202bc

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_5c
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gScreenHeight:I

    .line 133
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gScreenWidth:I

    .line 135
    iget v7, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gScreenWidth:I

    .line 136
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gScreenHeight:I

    .line 138
    .local v2, "height":I
    if-le v2, v7, :cond_117

    .end local v2    # "height":I
    :goto_9e
    div-int/lit8 v5, v2, 0x2

    .line 139
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 140
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f0203a7

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 141
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 142
    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->initialLayout()V

    .line 147
    if-nez p1, :cond_119

    .line 149
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setLayoutByCatch()V

    .line 157
    :goto_ca
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getHelpNumber()V

    .line 158
    return-void

    .line 98
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_ce
    const-string v8, "RequestHelpActivity"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 109
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    :cond_d7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 110
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 111
    :cond_ef
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 112
    const v8, 0x7f0202b9

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 114
    :cond_107
    const v8, 0x7f0202ba

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 121
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_10f
    const v8, 0x7f0202bb

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_117
    move v2, v7

    .line 138
    goto :goto_9e

    .line 154
    .end local v2    # "height":I
    .restart local v5    # "longest":I
    :cond_119
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_ca
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 213
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 215
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 191
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 192
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 195
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 196
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 206
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 207
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 169
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 172
    new-instance v0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;

    invoke-direct {v0, p0, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;)V

    invoke-static {v0}, Lcom/facebook/android/PostEvents;->addPostListener(Lcom/facebook/android/PostEvents$PostListener;)V

    .line 179
    :try_start_19
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :cond_24
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListPosition:I

    iget v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mItemPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setSelectionFromTop(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_40

    .line 185
    :goto_2d
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->doRefresh(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void

    .line 182
    :catch_40
    move-exception v0

    goto :goto_2d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string v2, "RequestHelpActivity"

    const-string v3, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    :try_start_11
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    .line 238
    const-string v2, "listState"

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListPosition:I

    .line 242
    const-string v2, "listPosition"

    iget v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mListPosition:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_42

    :goto_38
    iput v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mItemPosition:I

    .line 247
    const-string v1, "itemPosition"

    iget v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mItemPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .end local v0    # "itemView":Landroid/view/View;
    :goto_41
    return-void

    .line 246
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getTop()I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_45} :catch_47

    move-result v1

    goto :goto_38

    .line 248
    .end local v0    # "itemView":Landroid/view/View;
    :catch_47
    move-exception v1

    goto :goto_41
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 163
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 201
    const-string v0, "RequestHelpActivity"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
