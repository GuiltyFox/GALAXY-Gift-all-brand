.class Lcom/samsung/privilege/activity/LoginActivity$6$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/LoginActivity$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity$6;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 582
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iput-object p2, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 586
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 587
    const-string/jumbo v1, "Address"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    const-string/jumbo v1, "ShippingFirstName"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    const-string/jumbo v2, "ShippingLastName"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    const-string/jumbo v3, "Gender"

    invoke-static {v0, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    const-string/jumbo v3, "Address"

    invoke-static {v0, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 603
    const-string/jumbo v4, "BirthDate"

    invoke-static {v0, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    if-eqz v1, :cond_a9

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    if-eqz v2, :cond_a9

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    if-eqz v3, :cond_a9

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 606
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 611
    :goto_5c
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Locale"

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 613
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    .line 616
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 617
    if-lez v0, :cond_c6

    .line 618
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;I)V

    .line 659
    :goto_a8
    return-void

    .line 608
    :cond_a9
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b5} :catch_b6

    goto :goto_5c

    .line 656
    :catch_b6
    move-exception v0

    .line 657
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error while load profile data."

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 620
    :cond_c6
    :try_start_c6
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v5, :cond_121

    .line 621
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "rq_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 622
    if-ne v0, v5, :cond_103

    .line 623
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 624
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 625
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->finish()V

    goto :goto_a8

    .line 629
    :cond_103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 632
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->finish()V

    goto :goto_a8

    .line 635
    :cond_121
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "rq_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 636
    if-ne v0, v5, :cond_151

    .line 637
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 638
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/privilege/activity/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 641
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/LoginActivity;->finish()V

    goto/16 :goto_a8

    .line 649
    :cond_151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$6$1;->b:Lcom/samsung/privilege/activity/LoginActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/LoginActivity$6;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_167} :catch_b6

    goto/16 :goto_a8
.end method
