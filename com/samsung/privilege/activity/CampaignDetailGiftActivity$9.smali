.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 828
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const v3, 0x7f090199

    .line 831
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v1, 0x7f10010a

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 832
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 833
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 834
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v2, 0x7f09017a

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :goto_37
    return-void

    .line 836
    :cond_38
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 837
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method
