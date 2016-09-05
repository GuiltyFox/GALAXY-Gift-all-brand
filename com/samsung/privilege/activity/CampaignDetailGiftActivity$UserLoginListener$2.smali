.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 582
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 584
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 585
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 587
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 588
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 609
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 610
    return-void

    .line 590
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "points"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 591
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 593
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_4d

    .line 595
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 596
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 598
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 599
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    goto/16 :goto_4d

    .line 601
    :cond_d1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 602
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 604
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->c(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->d(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 605
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doReview(Landroid/view/View;)V

    goto/16 :goto_4d
.end method
