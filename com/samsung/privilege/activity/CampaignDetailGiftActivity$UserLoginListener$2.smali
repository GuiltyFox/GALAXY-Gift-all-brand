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
    .line 601
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

    .line 604
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 607
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 609
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 610
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

    .line 631
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->e(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 632
    return-void

    .line 612
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "points"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 613
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 615
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

    .line 617
    :cond_8f
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 618
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 620
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

    .line 621
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->f()V

    goto/16 :goto_4d

    .line 623
    :cond_d1
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 624
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_4d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 626
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

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener$2;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doReview(Landroid/view/View;)V

    goto/16 :goto_4d
.end method
