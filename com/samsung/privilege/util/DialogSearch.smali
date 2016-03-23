.class public Lcom/samsung/privilege/util/DialogSearch;
.super Ljava/lang/Object;
.source "DialogSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
    }
.end annotation


# static fields
.field private static ITEMS_PER_PAGE:I

.field private static TAG:Ljava/lang/String;

.field private static gActivityContext:Landroid/content/Context;

.field private static gDialogSearch:Landroid/app/Dialog;

.field private static loading:Z

.field private static mCampaignListAdapter:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

.field private static mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private static mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

.field private static out_of_data:Z

.field private static pastVisiblesItems:I

.field private static totalItemCount:I

.field private static visibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-class v0, Lcom/samsung/privilege/util/DialogSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogSearch;->TAG:Ljava/lang/String;

    .line 69
    sput-boolean v1, Lcom/samsung/privilege/util/DialogSearch;->loading:Z

    .line 70
    sput-boolean v1, Lcom/samsung/privilege/util/DialogSearch;->out_of_data:Z

    .line 72
    const/16 v0, 0x19

    sput v0, Lcom/samsung/privilege/util/DialogSearch;->ITEMS_PER_PAGE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/DialogSearch;->performSearch(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->visibleItemCount:I

    return p0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->ITEMS_PER_PAGE:I

    return v0
.end method

.method static synthetic access$1200()Landroid/support/v7/widget/RecyclerView;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->totalItemCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->totalItemCount:I

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSearch;->loading:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSearch;->loading:Z

    return p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSearch;->out_of_data:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSearch;->out_of_data:Z

    return p0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/privilege/util/DialogSearch;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    sput p0, Lcom/samsung/privilege/util/DialogSearch;->pastVisiblesItems:I

    return p0
.end method

.method static synthetic access$700()Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->mCampaignListAdapter:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;)Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    .prologue
    .line 59
    sput-object p0, Lcom/samsung/privilege/util/DialogSearch;->mCampaignListAdapter:Lcom/samsung/privilege/util/DialogSearch$CampaignListAdapter;

    return-object p0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->gActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    return-object v0
.end method

.method private static performSearch(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 11
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "skip"    # I

    .prologue
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaign"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&device_app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&byConfig=true&config=campaign_all"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_85

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_85
    if-lez p3, :cond_9f

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&$skip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    :cond_9f
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 213
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v4, "app_id"

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 216
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v4, Lcom/samsung/privilege/util/DialogSearch;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performSearch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v4, Lcom/samsung/privilege/util/DialogSearch$5;

    invoke-direct {v4, p1, p3, p0}, Lcom/samsung/privilege/util/DialogSearch$5;-><init>(Landroid/os/Handler;ILandroid/content/Context;)V

    invoke-virtual {v0, p0, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 265
    return-void
.end method

.method public static showDialogSearch(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v9, 0x1

    .line 76
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_e4

    .line 77
    sput-object p0, Lcom/samsung/privilege/util/DialogSearch;->gActivityContext:Landroid/content/Context;

    .line 79
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 82
    :try_start_f
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    if-eqz v5, :cond_18

    .line 83
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_e5

    .line 88
    :cond_18
    :goto_18
    new-instance v5, Landroid/app/Dialog;

    const v6, 0x7f0d00fc

    invoke-direct {v5, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    .line 90
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f040113

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 93
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f1000b6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f10012c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 96
    .local v2, "editKeyword":Landroid/widget/EditText;
    new-instance v5, Lcom/samsung/privilege/util/DialogSearch$1;

    invoke-direct {v5, p0, p1, v2}, Lcom/samsung/privilege/util/DialogSearch$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f1005a3

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    sput-object v5, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    .line 120
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 121
    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    sget-object v6, Lcom/samsung/privilege/util/DialogSearch;->gActivityContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    sput-object v5, Lcom/samsung/privilege/util/DialogSearch;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 122
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    sget-object v6, Lcom/samsung/privilege/util/DialogSearch;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 124
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/samsung/privilege/util/DialogSearch$2;

    invoke-direct {v6, p0, p1, v2}, Lcom/samsung/privilege/util/DialogSearch$2;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 140
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->mRecyclerCampaign:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/bzbs/event/RecyclerItemClickListener;

    sget-object v7, Lcom/samsung/privilege/util/DialogSearch;->gActivityContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/privilege/util/DialogSearch$3;

    invoke-direct {v8}, Lcom/samsung/privilege/util/DialogSearch$3;-><init>()V

    invoke-direct {v6, v7, v8}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 176
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f100578

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 177
    .local v4, "layoutHeaderArrow":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/util/DialogSearch$4;

    invoke-direct {v5}, Lcom/samsung/privilege/util/DialogSearch$4;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    const v6, 0x7f100579

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 185
    .local v3, "imageHeaderArrow":Landroid/widget/ImageView;
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gActivityContext:Landroid/content/Context;

    const v6, 0x7f05003b

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 186
    .local v1, "animRotateDownToRight":Landroid/view/animation/Animation;
    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 187
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 190
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 191
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 193
    sget-object v5, Lcom/samsung/privilege/util/DialogSearch;->gDialogSearch:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 195
    const-string/jumbo v5, "Search"

    invoke-static {v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 197
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "animRotateDownToRight":Landroid/view/animation/Animation;
    .end local v2    # "editKeyword":Landroid/widget/EditText;
    .end local v3    # "imageHeaderArrow":Landroid/widget/ImageView;
    .end local v4    # "layoutHeaderArrow":Landroid/widget/RelativeLayout;
    :cond_e4
    return-void

    .line 85
    :catch_e5
    move-exception v5

    goto/16 :goto_18
.end method
