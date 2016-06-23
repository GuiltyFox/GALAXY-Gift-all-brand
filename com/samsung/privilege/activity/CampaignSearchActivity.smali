.class public Lcom/samsung/privilege/activity/CampaignSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignSearchActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    const-class v0, Lcom/samsung/privilege/activity/CampaignSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignSearchActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/CampaignSearchActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignSearchActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/CampaignSearchActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignSearchActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignSearchActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method


# virtual methods
.method public doSearch(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 53
    const-string/jumbo v6, ""

    const v7, 0x7f09026f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 56
    :try_start_11
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_3c

    .line 58
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 59
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_111

    .line 66
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_3c
    :goto_3c
    const v6, 0x7f10012d

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 68
    .local v1, "editKeyword":Landroid/widget/EditText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "api/campaign"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&sponsorId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&byConfig=true&config=campaign_gift&format=json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 76
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v6, "app_id"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 79
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/CampaignSearchActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignSearchActivity;)V

    invoke-virtual {v0, v6, v5, v7}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 101
    return-void

    .line 62
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v1    # "editKeyword":Landroid/widget/EditText;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v5    # "url":Ljava/lang/String;
    :catch_111
    move-exception v6

    goto/16 :goto_3c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignSearchActivity;->setContentView(I)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignSearchActivity;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method
