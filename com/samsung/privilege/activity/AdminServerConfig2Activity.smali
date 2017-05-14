.class public Lcom/samsung/privilege/activity/AdminServerConfig2Activity;
.super Landroid/app/Activity;
.source "AdminServerConfig2Activity.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 38
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f100248

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f10024d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f100251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f100252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 171
    return-void
.end method


# virtual methods
.method public doDefaultToProduction(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 69
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://api.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://buzzebees.blob.core.windows.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://www.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://wallet.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "70"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "5605"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "6363"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f100251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "123844944339"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f100252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "956853005078"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "228227059976"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f100254

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-42649771-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-54263353-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-59571626-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public doDefaultToStagging(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 97
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stg-api-buzzebees.cloudapp.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stgstoragebuzzebees.blob.core.windows.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "https://stw.buzzebees.com/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://stg-api-ewallet.cloudapp.net/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "70"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f10024f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "104221"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f100250

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "104324"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f100251

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "205303060927"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f100252

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "371839302261"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f100253

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "139804663605"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f100254

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-42654049-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-54262456-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "UA-59571431-1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public doUseThisSetting(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    const-string/jumbo v0, "Use this setting?"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 127
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;-><init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "No"

    new-instance v3, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$1;-><init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    .line 160
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->requestWindowFeature(I)Z

    .line 25
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->setContentView(I)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->a:Landroid/os/Handler;

    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->a()V

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
