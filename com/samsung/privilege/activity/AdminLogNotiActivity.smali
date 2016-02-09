.class public Lcom/samsung/privilege/activity/AdminLogNotiActivity;
.super Landroid/app/Activity;
.source "AdminLogNotiActivity.java"


# instance fields
.field private gHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->requestWindowFeature(I)Z

    .line 21
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->setContentView(I)V

    .line 23
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->gHandler:Landroid/os/Handler;

    .line 25
    const/high16 v1, 0x7f120000

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 26
    .local v0, "etLog":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetNotificationList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminLogNotiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method
