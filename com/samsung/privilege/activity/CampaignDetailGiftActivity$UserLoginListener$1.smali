.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 572
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 575
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 577
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 578
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 580
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 581
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 602
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 603
    return-void

    .line 583
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "points"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 584
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 586
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_4d

    .line 588
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 589
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 591
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 592
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    goto/16 :goto_4d

    .line 594
    :cond_d1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 597
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 598
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doReview(Landroid/view/View;)V

    goto/16 :goto_4d
.end method
