.class public Lcom/samsung/privilege/activity/AdminServerConfigActivity;
.super Landroid/app/Activity;
.source "AdminServerConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/AdminServerConfigActivity$LogoutRequestListener;
    }
.end annotation


# instance fields
.field private etCurrent:Landroid/widget/EditText;

.field private etProduction:Landroid/widget/EditText;

.field private etSponsor:Landroid/widget/EditText;

.field private etStaging:Landroid/widget/EditText;

.field private gDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private LogoutAndGotoLogin()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 126
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etProduction:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->LogoutAndGotoLogin()V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etStaging:Landroid/widget/EditText;

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AdminServerConfigActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AdminServerConfigActivity$5;-><init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method


# virtual methods
.method public doChangeSponsor(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    const-string v0, "Change sponsor id success."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->showToast(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public doUseProduction(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Use this production url?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etProduction:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfigActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity$1;-><init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 72
    const-string v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfigActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity$2;-><init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 78
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 80
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method public doUseStaging(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Use this staging url?"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etStaging:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;-><init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 97
    const-string v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/AdminServerConfigActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity$4;-><init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 103
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->setContentView(I)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->mHandler:Landroid/os/Handler;

    .line 40
    const v0, 0x7f130001

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etCurrent:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f130005

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etProduction:Landroid/widget/EditText;

    .line 42
    const v0, 0x7f130007

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etStaging:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f130003

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etSponsor:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etCurrent:Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etSponsor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method
