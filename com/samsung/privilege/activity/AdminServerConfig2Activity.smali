.class public Lcom/samsung/privilege/activity/AdminServerConfig2Activity;
.super Landroid/app/Activity;
.source "AdminServerConfig2Activity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private LogoutAndGotoLogin()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->LogoutAndGotoLogin()V

    return-void
.end method

.method private initialSetting()V
    .registers 3

    .prologue
    .line 38
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f1001cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->WEB_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f1001d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f1001d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_THAI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f1001d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_LAOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f1001d5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_MYAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_THAI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v0, 0x7f1001d7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_LAOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_MYAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f1001d9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_THAI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f1001da

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_LAOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_MYAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$3;-><init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method


# virtual methods
.method public doDefaultToProduction(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://api.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f1001cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://buzzebees.blob.core.windows.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://www.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://prd-api-ewallet.cloudapp.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f1001d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "70"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f1001d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "5605"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f1001d5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "6363"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "123844944339"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v0, 0x7f1001d7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "956853005078"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "228227059976"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f1001d9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-42649771-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f1001da

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-54263353-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-59571626-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public doDefaultToStagging(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stg-api-buzzebees.cloudapp.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f1001cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stgstoragebuzzebees.blob.core.windows.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://stw.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stg-api-ewallet.cloudapp.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f1001d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "70"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f1001d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "104221"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f1001d5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "104324"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "205303060927"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f1001d7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "371839302261"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "139804663605"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f1001d9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-42654049-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f1001da

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-54262456-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-59571431-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public doUseThisSetting(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "Use this setting?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    const v3, 0x7f1001ce

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;-><init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;-><init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    .line 157
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 163
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->requestWindowFeature(I)Z

    .line 25
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->setContentView(I)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->mHandler:Landroid/os/Handler;

    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->initialSetting()V

    .line 30
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    return-void
.end method
