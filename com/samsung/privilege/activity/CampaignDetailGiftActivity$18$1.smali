.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;)V
    .registers 2

    .prologue
    .line 2355
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2358
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2359
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2360
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2362
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget v1, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    .line 2363
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget v0, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    if-gez v0, :cond_3e

    .line 2364
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iput v2, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    .line 2366
    :cond_3e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iput-boolean v2, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    .line 2367
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<font color=\'#3ba9f6\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f090371

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;->d:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget v2, v2, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2368
    return-void
.end method
